package com.vodafone.intership.camera.camera;


import android.app.Application;
import org.acra.ACRA;
import org.acra.annotation.ReportsCrashes;
@ReportsCrashes(
        formKey = "",
        formUri = "https://acme.bpimentan.iriscouch.com/acra-camera/_design/acra-storage/_update/report",
        reportType = org.acra.sender.HttpSender.Type.JSON,
        httpMethod = org.acra.sender.HttpSender.Method.PUT,
        formUriBasicAuthLogin="mcare",
        formUriBasicAuthPassword="mcare123"
)
public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        ACRA.init(this);
    }
}