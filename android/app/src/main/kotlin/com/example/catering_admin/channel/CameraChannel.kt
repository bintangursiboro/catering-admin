package com.example.catering_admin.channel

import android.Manifest
import android.app.Activity
import android.content.ContentValues
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.net.Uri
import android.os.Build
import android.provider.MediaStore
import com.example.catering_admin.MainActivity.Companion.IMAGE_CAPTURE_CODE
import com.example.catering_admin.MainActivity.Companion.PERMISSION_CODE
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterView
import java.io.ByteArrayOutputStream

class CameraChannel (private val flutterView: FlutterView, private  val mActivity : Activity) {
    private val CHANNEL = "com.ijniclohot.cateringadmin/camera"
    private val OPEN_CAMERA_METHOD = "openCamera"
    private var imageUri : Uri? = null
    private var byteArray : ByteArray? = null
    private lateinit var methodResult : MethodChannel.Result

    fun setUpMethodChannel (){
        MethodChannel(flutterView,CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == OPEN_CAMERA_METHOD){
                methodResult = result
                checkCameraPermission()
            }else{
                result.notImplemented()
            }
        }
    }

    private fun openCamera(){
        val values = ContentValues()
        values.put(MediaStore.Images.Media.TITLE, "New Picture")
        values.put(MediaStore.Images.Media.DESCRIPTION, "From the camera")
        imageUri = mActivity.contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values)
        //camera intent
        val cameraIntent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
        cameraIntent.putExtra(MediaStore.EXTRA_OUTPUT, imageUri)
        mActivity.startActivityForResult(cameraIntent, IMAGE_CAPTURE_CODE)
    }

    private fun checkCameraPermission(){
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){
            if (mActivity.checkSelfPermission(Manifest.permission.CAMERA) == PackageManager.PERMISSION_DENIED
                    || mActivity.checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_DENIED
            ){
                //permission not enabled
                val permission = arrayOf(Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE)
                //show pop up to request permission
                mActivity.requestPermissions(permission,PERMISSION_CODE)
            }else{
                //permission granted
                openCamera()
            }
        }else{
            openCamera()
        }
    }

    fun loadImageUri(){
        val bitmap = MediaStore.Images.Media.getBitmap(mActivity.contentResolver, imageUri)
        val stream = ByteArrayOutputStream()
        bitmap.compress(Bitmap.CompressFormat.PNG,100, stream)
        byteArray = stream.toByteArray()
        methodResult.success(byteArray)
    }

}