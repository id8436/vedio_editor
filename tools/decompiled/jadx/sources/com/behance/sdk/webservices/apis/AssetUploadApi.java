package com.behance.sdk.webservices.apis;

import com.behance.sdk.webservices.OkHttpHelper;
import com.behance.sdk.webservices.WebServiceUtility;
import d.ae;
import d.an;
import d.ay;
import d.az;
import d.bd;
import d.g;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class AssetUploadApi {
    private static final String AUTO_SIGN_MULTIPART = "auto_sign_multipart";
    private static final String EDITOR_PATH = "editor";
    private static final String FORM_EXTENSION = "extension";
    private static final String FORM_OBJECT_KEY = "object_key";
    private static final String FORM_UPLOAD_ID = "upload_id";
    private static final String PROJECT_PATH = "project";

    public static g generateSignedUrl(String str) throws IOException {
        String strAddApiKey = WebServiceUtility.addApiKey(WebServiceUtility.baseApiUrl() + WebServiceUtility.pathConcat("project", EDITOR_PATH, "auto_sign_request"));
        ae aeVar = new ae();
        aeVar.a(FORM_EXTENSION, str);
        return OkHttpHelper.callWithAuth(new ay().a(strAddApiKey).a(aeVar.a()).b());
    }

    public static g uploadFileToS3(String str, an anVar, File file) throws IOException {
        return OkHttpHelper.call(new ay().a(str).b(az.create(anVar, file)).b());
    }

    public static g initiateMultipartUpload(String str) throws IOException {
        String strAddApiKey = WebServiceUtility.addApiKey(WebServiceUtility.baseApiUrl() + WebServiceUtility.pathConcat("project", EDITOR_PATH, AUTO_SIGN_MULTIPART, "initiate"));
        ae aeVar = new ae();
        aeVar.a(FORM_EXTENSION, str);
        return OkHttpHelper.callWithAuth(new ay().a(strAddApiKey).a(aeVar.a()).b());
    }

    public static g generateSignedUrlForPart(String str, String str2, int i) throws IOException {
        String strAddApiKey = WebServiceUtility.addApiKey(WebServiceUtility.baseApiUrl() + WebServiceUtility.pathConcat("project", EDITOR_PATH, AUTO_SIGN_MULTIPART, "upload"));
        ae aeVar = new ae();
        aeVar.a(FORM_OBJECT_KEY, str2);
        aeVar.a(FORM_UPLOAD_ID, str);
        aeVar.a("part_number", String.valueOf(i));
        return OkHttpHelper.callWithAuth(new ay().a(strAddApiKey).a(aeVar.a()).b());
    }

    public static g uploadChunkToS3(String str, File file) {
        return OkHttpHelper.call(new ay().a(str).b(az.create((an) null, file)).b());
    }

    public static bd completeMultipartUpload(String str, String str2) throws IOException {
        String strAddApiKey = WebServiceUtility.addApiKey(WebServiceUtility.baseApiUrl() + WebServiceUtility.pathConcat("project", EDITOR_PATH, AUTO_SIGN_MULTIPART, "complete"));
        ae aeVar = new ae();
        aeVar.a(FORM_OBJECT_KEY, str2);
        aeVar.a(FORM_UPLOAD_ID, str);
        return OkHttpHelper.callWithAuth(new ay().a(strAddApiKey).a(aeVar.a()).b()).a();
    }
}
