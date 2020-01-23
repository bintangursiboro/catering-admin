package com.example.catering_admin

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import com.example.catering_admin.channel.CameraChannel

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

  companion object{
    val PERMISSION_CODE = 1000
    val IMAGE_CAPTURE_CODE = 1001
  }

  lateinit var cameraChannel: CameraChannel

  private fun initPlatformChannel(){
    cameraChannel = CameraChannel(flutterView, this)
    cameraChannel.setUpMethodChannel()
  }


  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    initPlatformChannel()

  }

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
    if (resultCode == Activity.RESULT_OK){
      cameraChannel.loadImageUri()
    }
  }
}
