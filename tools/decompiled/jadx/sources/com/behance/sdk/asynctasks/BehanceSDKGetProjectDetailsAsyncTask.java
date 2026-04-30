package com.behance.sdk.asynctasks;

import android.os.AsyncTask;
import android.os.Build;
import com.adobe.creativesdk.foundation.AdobeCSDKFoundation;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetProjectDetailsAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKGetProjectDetailsAsyncTaskParams;
import com.behance.sdk.asynctasks.result.BehanceSDKAsyncTaskResultWrapper;
import com.behance.sdk.dto.parser.BehanceSDKProjectDTOParser;
import com.behance.sdk.dto.project.BehanceSDKAbstractProjectModuleDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleAudioDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleEmbedDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleImageDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleVideoDTO;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import com.behance.sdk.exception.BehanceSDKException;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.network.BehanceConnectionResponse;
import com.behance.sdk.network.BehanceHttpsConnection;
import com.behance.sdk.util.BehanceSDKFileUtils;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectDetailsAsyncTask extends AsyncTask<BehanceSDKGetProjectDetailsAsyncTaskParams, Void, BehanceSDKAsyncTaskResultWrapper<BehanceSDKProjectDTO>> {
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKGetProjectDetailsAsyncTask.class);
    private BehanceSDKAsyncTaskResultWrapper<BehanceSDKProjectDTO> result;
    private IBehanceSDKGetProjectDetailsAsyncTaskListener taskHandler;
    private BehanceSDKGetProjectDetailsAsyncTaskParams taskParams;

    public BehanceSDKGetProjectDetailsAsyncTask(IBehanceSDKGetProjectDetailsAsyncTaskListener iBehanceSDKGetProjectDetailsAsyncTaskListener) {
        this.taskHandler = iBehanceSDKGetProjectDetailsAsyncTaskListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public BehanceSDKAsyncTaskResultWrapper<BehanceSDKProjectDTO> doInBackground(BehanceSDKGetProjectDetailsAsyncTaskParams... behanceSDKGetProjectDetailsAsyncTaskParamsArr) {
        this.result = new BehanceSDKAsyncTaskResultWrapper<>();
        try {
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Project details from server", new Object[0]);
            this.result.setExceptionOccurred(true);
            this.result.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting Project details from server", new Object[0]);
            this.result.setException(new BehanceSDKException(th));
            this.result.setExceptionOccurred(true);
        }
        if (behanceSDKGetProjectDetailsAsyncTaskParamsArr.length != 1) {
            this.result.setException(new BehanceSDKException("Params are required"));
            this.result.setExceptionOccurred(true);
            return this.result;
        }
        this.taskParams = behanceSDKGetProjectDetailsAsyncTaskParamsArr[0];
        Future futureSubmit = Executors.newFixedThreadPool(1).submit(new RecordProjectViewCallable());
        BehanceSDKProjectDTO projectDetails = getProjectDetails(this.taskParams);
        if (this.result != null && this.result.isExceptionOccurred()) {
            return this.result;
        }
        if (projectDetails != null) {
            fixAndSaveHTML(projectDetails);
            if (this.result != null && this.result.isExceptionOccurred()) {
                return this.result;
            }
            BehanceSDKProjectDTO behanceSDKProjectDTO = (BehanceSDKProjectDTO) futureSubmit.get();
            projectDetails.setAppreciatedByUser(behanceSDKProjectDTO.isAppreciatedByUser());
            projectDetails.setAppreciatedByUserOn(behanceSDKProjectDTO.getAppreciatedByUserOn());
        }
        this.result.setResult(projectDetails);
        return this.result;
    }

    private BehanceSDKProjectDTO getProjectDetails(BehanceSDKGetProjectDetailsAsyncTaskParams behanceSDKGetProjectDetailsAsyncTaskParams) {
        JSONObject jSONObject;
        int i;
        try {
            HashMap map = new HashMap();
            map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
            map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, behanceSDKGetProjectDetailsAsyncTaskParams.getProjectID());
            String urlFromTemplate = BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.GET_PROJECT_API_URL, map);
            logger.debug("Get project details url - %s", urlFromTemplate);
            String responseObject = BehanceHttpsConnection.getInstance().invokeHttpGetRequest(urlFromTemplate, behanceSDKGetProjectDetailsAsyncTaskParams.getUserAccessToken()).getResponseObject();
            logger.debug("Get project details response: %s", responseObject);
            jSONObject = new JSONObject(responseObject);
            i = jSONObject.getInt("http_code");
        } catch (Exception e2) {
            logger.error(e2, "Problem getting Project details from server", new Object[0]);
            this.result.setExceptionOccurred(true);
            this.result.setException(e2);
        } catch (Throwable th) {
            logger.error(th, "Problem getting Project details from server", new Object[0]);
            this.result.setException(new BehanceSDKException(th));
            this.result.setExceptionOccurred(true);
        }
        if (i == 200) {
            return new BehanceSDKProjectDTOParser().parseProjectWithDetails(jSONObject.optJSONObject("project"));
        }
        if (i == 404) {
            this.result.setException(new BehanceSDKException("Project not found"));
            this.result.setExceptionOccurred(true);
        } else {
            this.result.setException(new BehanceSDKException("Invalid server response code " + i));
            this.result.setExceptionOccurred(true);
        }
        return null;
    }

    private void fixAndSaveHTML(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        String strFixHTMLContent = fixHTMLContent(behanceSDKProjectDTO);
        if (strFixHTMLContent != null && strFixHTMLContent.length() > 0) {
            saveProjectHTML(strFixHTMLContent, behanceSDKProjectDTO);
        } else {
            this.result.setExceptionOccurred(true);
            this.result.setException(new BehanceSDKException("Unable to fix the HTML content"));
        }
    }

    private String fixHTMLContent(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        List<BehanceSDKAbstractProjectModuleDTO> modules = behanceSDKProjectDTO.getModules();
        String html = behanceSDKProjectDTO.getHTML();
        int i = 0;
        Iterator<BehanceSDKAbstractProjectModuleDTO> it = modules.iterator();
        while (true) {
            String str = html;
            int i2 = i;
            if (it.hasNext()) {
                BehanceSDKAbstractProjectModuleDTO next = it.next();
                if (BehanceSDKProjectModuleType.IMAGE.equals(next.getType())) {
                    int i3 = i2 + 1;
                    html = fixImageModuleLayout(behanceSDKProjectDTO.getId(), str, (BehanceSDKProjectModuleImageDTO) next, i2);
                    i = i3;
                } else if (BehanceSDKProjectModuleType.EMBED == next.getType()) {
                    String strFixEmbedModuleLayout = fixEmbedModuleLayout(str, (BehanceSDKProjectModuleEmbedDTO) next);
                    i = i2;
                    html = strFixEmbedModuleLayout;
                } else if (BehanceSDKProjectModuleType.VIDEO == next.getType()) {
                    String strFixVideoModuleLayout = fixVideoModuleLayout(behanceSDKProjectDTO.getId(), str, (BehanceSDKProjectModuleVideoDTO) next);
                    i = i2;
                    html = strFixVideoModuleLayout;
                } else if (BehanceSDKProjectModuleType.AUDIO == next.getType()) {
                    String strFixAudioModuleLayout = fixAudioModuleLayout(str, (BehanceSDKProjectModuleAudioDTO) next);
                    i = i2;
                    html = strFixAudioModuleLayout;
                } else {
                    i = i2;
                    html = str;
                }
            } else {
                return str;
            }
        }
    }

    private String fixEmbedModuleLayout(String str, BehanceSDKProjectModuleEmbedDTO behanceSDKProjectModuleEmbedDTO) {
        int i;
        int iIndexOf;
        String strSubstring = "";
        String embedHTML = behanceSDKProjectModuleEmbedDTO.getEmbedHTML();
        int iIndexOf2 = embedHTML.indexOf("src=\"");
        if (iIndexOf2 >= 0 && (iIndexOf = embedHTML.indexOf("\"", (i = iIndexOf2 + 5))) > 0) {
            strSubstring = embedHTML.substring(i, iIndexOf);
        }
        if (!strSubstring.contains("https://") && !strSubstring.contains("http://")) {
            String str2 = "https://" + strSubstring;
            str = str.replace(strSubstring, str2);
            strSubstring = str2;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return str.replaceFirst("(?s)(<li )(.*)(module-" + behanceSDKProjectModuleEmbedDTO.getId() + ")([^>])(>)(.*?)(<iframe )([^>]*)(></iframe>)", "$1$2$3$4$5$6<div class=\"embedModuleWrapperClass\" style=\"position: relative;\">$7$8$9</div>");
        }
        return str.replaceFirst("(?s)(<li )(.*)(module-" + behanceSDKProjectModuleEmbedDTO.getId() + ")([^>])(>)(.*?)(<iframe )([^>]*)(></iframe>)", "$1$2$3$4$5$6<div class=\"embedModuleWrapperClass\" style=\"position: relative;\"><div style=\"position: absolute; top: 0; left: 0; width:100%; height:100%\" onclick=\"alert('" + BehanceSDKProjectModuleType.EMBED.name() + strSubstring + "'); return false\"></div>$7$8$9</div>");
    }

    private String fixAudioModuleLayout(String str, BehanceSDKProjectModuleAudioDTO behanceSDKProjectModuleAudioDTO) {
        return str.replaceFirst("(?s)(<li )(.*)(module-" + behanceSDKProjectModuleAudioDTO.getId() + ")([^>])(>)(.*?)(<object )(.*?)(</object>)", "$1$2$3$4$5<div class=\"audioModuleWrapperClass\" align=\"center\"><audio class=\"audioModuleWrapperClass\" style=\"width:80%;\" controls=\"controls\"><source src=\"" + behanceSDKProjectModuleAudioDTO.getSrcURL() + "\" type=\"audio/mpeg\">Problem loading audio</audio></div>");
    }

    private String fixVideoModuleLayout(String str, String str2, BehanceSDKProjectModuleVideoDTO behanceSDKProjectModuleVideoDTO) {
        int i;
        int iIndexOf;
        int i2;
        int iIndexOf2;
        String embedHTML = behanceSDKProjectModuleVideoDTO.getEmbedHTML();
        String strSubstring = "";
        int iIndexOf3 = embedHTML.indexOf("width=\"");
        if (iIndexOf3 >= 0 && (iIndexOf2 = embedHTML.indexOf("\"", (i2 = iIndexOf3 + 7))) > 0) {
            strSubstring = embedHTML.substring(i2, iIndexOf2);
        }
        String strSubstring2 = "";
        int iIndexOf4 = embedHTML.indexOf("height=\"");
        if (iIndexOf4 >= 0 && (iIndexOf = embedHTML.indexOf("\"", (i = iIndexOf4 + 8))) > 0) {
            strSubstring2 = embedHTML.substring(i, iIndexOf);
        }
        return str2.replaceFirst("(?s)(<li )(.*)(module-" + behanceSDKProjectModuleVideoDTO.getId() + ")([^>])(>)(.*?)(<object )(.*?)(</object>)", "$1$2$3$4$5<a class=\"videoModuleWrapperClass\" href=\"#\" onClick=\"alert('" + BehanceSDKProjectModuleType.VIDEO.name() + behanceSDKProjectModuleVideoDTO.getVideoSrc() + "'); return false\"><div style=\"position: relative\"><img style=\"position: relative;\" width=\"" + strSubstring + "\" height=\"" + strSubstring2 + "\" src=\"" + behanceSDKProjectModuleVideoDTO.getImageSrc() + "\"/><img style=\"position: absolute; top: 39%; left: 43%; z-index: 1;\" src='file:///android_asset/flash_play_button.png'/></div></a>");
    }

    private String fixImageModuleLayout(String str, String str2, BehanceSDKProjectModuleImageDTO behanceSDKProjectModuleImageDTO, int i) {
        String srcUrl;
        if (this.taskParams.isDownloadHD()) {
            srcUrl = behanceSDKProjectModuleImageDTO.getHDSrcUrl();
        } else {
            srcUrl = behanceSDKProjectModuleImageDTO.getSrcUrl();
        }
        return str2.replaceFirst("(?s)(<li )(.*?)(module-" + behanceSDKProjectModuleImageDTO.getId() + ")([^>])(>)(<img )(.*?)(src=\\\"[^\\\"]*\")([^>]*?)(>)", "$1$2$3$4$5<a href=\"#\" onClick=\"alert('" + BehanceSDKProjectModuleType.IMAGE.name() + i + "'); return false\"><img src=\"" + srcUrl + "\" " + (behanceSDKProjectModuleImageDTO.isFullBleed() ? "style=\"float:none;min-width:725px;height:auto;margin-left:-53px;margin-right:0px\" $7" : "$7$9") + "></a>");
    }

    private String createAppreciateDivInHTML() {
        return "<div id=\"appreciation\" style=\"height: 180px; width: 100%; text-align:center; padding-bottom:52px; padding-top:38px; clear:both;\"/>";
    }

    private void saveProjectHTML(String str, BehanceSDKProjectDTO behanceSDKProjectDTO) {
        Exception exc;
        File file;
        File file2 = null;
        File file3 = new File((File) null, behanceSDKProjectDTO.getLayoutHTMLPath());
        try {
            String appStoragePath = BehanceSDKFileUtils.getAppStoragePath();
            logger.debug("Trying to create temp folder. [Project id - %s]", behanceSDKProjectDTO.getId());
            file = new File(appStoragePath);
            try {
                if (!file.exists()) {
                    logger.debug("Creating HTML Root folder folder. [Folder Path is - %s]", file.getAbsolutePath());
                    if (!file.mkdirs()) {
                        logger.error("Error Trying to create temp folder. [Path is - %s]", file.getAbsolutePath());
                        this.result.setExceptionOccurred(true);
                        this.result.setException(new BehanceSDKException("Could not create temp folder"));
                        return;
                    }
                }
                if (str != null) {
                    byte[] bytes = ("<html><head><meta name=\"viewport\" content=\"width=100%\" /><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/final.css\"/><style type=\"text/css\">" + behanceSDKProjectDTO.getCustomCSS() + "</style><style type=\"text/css\">* {\n-webkit-tap-highlight-color: rgba(0, 92, 255, .4);\n-webkit-tap-highlight-color: #66005cff;\n}</style><script type=\"text/javascript\" src=\"file:///android_asset/combined.js\"></script><script type=\"text/javascript\">function pauseAllActiveAudio() { $('audio').each(function() {if(!this.paused){this.pause();}}); }</script></head><body class=\"no-padding project-view project-styles\"><div id=\"site-container\"><div id=\"site-columns\" class=\"grid-wrap cfix\"><div id=\"site-left-column\"><div id=\"primary-content\" class=\"ui-corner-all no-level-2-nav cfix\"><div id=\"primary-project-content\" class=\"project-styles\">" + str + createAppreciateDivInHTML() + "</div></div></div></div></div><script type=\"text/javascript\">$(document).ready(function() { if (-1 != window.location.href.indexOf('?connection=false')) { $('.embedModuleWrapperClass').css('visibility', 'hidden'); $('.videoModuleWrapperClass').css('visibility', 'hidden'); $('.audioModuleWrapperClass').css('visibility', 'hidden'); } });</script></body></html>").getBytes();
                    if (file3.exists()) {
                        file3.delete();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                    fileOutputStream.write(bytes);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            } catch (FileNotFoundException e2) {
                e = e2;
                this.result.setExceptionOccurred(true);
                this.result.setException(new BehanceSDKException("HTML File not found"));
                logger.error(e, "Problem saving project HTML. [project id - %s] [temp dir - %s]", behanceSDKProjectDTO.getId(), file.getAbsolutePath());
            } catch (IOException e3) {
                e = e3;
                this.result.setExceptionOccurred(true);
                this.result.setException(new BehanceSDKException("Problem saving project HTML"));
                logger.error(e, "IOProblem saving project HTML. [project id - %s] [temp dir - %s]", behanceSDKProjectDTO.getId(), file.getAbsolutePath());
            } catch (Exception e4) {
                file2 = file;
                exc = e4;
                this.result.setExceptionOccurred(true);
                this.result.setException(new BehanceSDKException("Problem saving project HTML"));
                ILogger iLogger = logger;
                Object[] objArr = new Object[2];
                objArr[0] = behanceSDKProjectDTO.getId();
                objArr[1] = file2 != null ? file2.getAbsolutePath() : "null";
                iLogger.error(exc, "Unkown problem saving project HTML. [project id - %s] [temp dir - %s]", objArr);
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            file = null;
        } catch (IOException e6) {
            e = e6;
            file = null;
        } catch (Exception e7) {
            exc = e7;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(BehanceSDKAsyncTaskResultWrapper<BehanceSDKProjectDTO> behanceSDKAsyncTaskResultWrapper) {
        if (behanceSDKAsyncTaskResultWrapper.isExceptionOccurred()) {
            this.taskHandler.onGetProjectDetailsAsyncTaskFailure(behanceSDKAsyncTaskResultWrapper.getException());
        } else {
            this.taskHandler.onGetProjectDetailsAsyncTaskSuccess(behanceSDKAsyncTaskResultWrapper.getResult());
        }
    }

    class RecordProjectViewCallable implements Callable<BehanceSDKProjectDTO> {
        private RecordProjectViewCallable() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public BehanceSDKProjectDTO call() throws Exception {
            return recordAViewForProject();
        }

        private BehanceSDKProjectDTO recordAViewForProject() {
            String responseObject;
            int responseCode;
            BehanceSDKProjectDTO behanceSDKProjectDTO = new BehanceSDKProjectDTO();
            try {
                HashMap map = new HashMap();
                map.put(BehanceSDKUrlUtil.KEY_CLIENT_ID, AdobeCSDKFoundation.getClientId());
                String projectID = BehanceSDKGetProjectDetailsAsyncTask.this.taskParams.getProjectID();
                map.put(BehanceSDKUrlUtil.KEY_PROJECT_ID, projectID);
                BehanceConnectionResponse<String> behanceConnectionResponseInvokeHttpPostRequest = BehanceHttpsConnection.getInstance().invokeHttpPostRequest(BehanceSDKUrlUtil.getUrlFromTemplate(BehanceSDKUrlUtil.VIEW_PROJECT_API_URL, map), BehanceSDKGetProjectDetailsAsyncTask.this.taskParams.getUserAccessToken());
                responseObject = behanceConnectionResponseInvokeHttpPostRequest.getResponseObject();
                BehanceSDKGetProjectDetailsAsyncTask.logger.debug("Record a view for Project response for [project id - %s ] : %s", projectID, responseObject);
                responseCode = behanceConnectionResponseInvokeHttpPostRequest.getResponseCode();
            } catch (Exception e2) {
                behanceSDKProjectDTO.setAppreciatedByUser(false);
                BehanceSDKGetProjectDetailsAsyncTask.logger.error(e2, "Problem recording view for Project", new Object[0]);
            } catch (Throwable th) {
                behanceSDKProjectDTO.setAppreciatedByUser(false);
                BehanceSDKGetProjectDetailsAsyncTask.logger.error(th, "Problem recording view for Project", new Object[0]);
            }
            if (responseCode != 200) {
                BehanceSDKGetProjectDetailsAsyncTask.logger.debug("Record a view for Project http response status code - %s", Integer.valueOf(responseCode));
                return behanceSDKProjectDTO;
            }
            JSONObject jSONObject = new JSONObject(responseObject);
            if (jSONObject.getInt("http_code") == 200) {
                behanceSDKProjectDTO.setAppreciatedByUser(jSONObject.optBoolean("appreciated", false));
                behanceSDKProjectDTO.setAppreciatedByUserOn(jSONObject.optLong("appreciated_on"));
            } else {
                behanceSDKProjectDTO.setAppreciatedByUser(false);
            }
            return behanceSDKProjectDTO;
        }
    }
}
