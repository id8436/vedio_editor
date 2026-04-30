package com.adobe.premiereclip.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.util.Log;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.customextractor.ClipExtractor;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.utility.AndroidMiscUtils;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectPosterTask extends AsyncTask<Project, Void, Void> {
    private static final int MAX_HEIGHT = 720;
    private static final int MAX_WIDTH = 1280;
    private static ProjectPosterTask instance;
    private static String internalStorageDirectory = PremiereClipApplication.getContext().getApplicationInfo().dataDir;
    private static boolean running;
    private ProjectPosterResources projectPosterResources;
    private TaskCompleted taskCompleted;
    private boolean taskSuccess = true;

    public interface TaskCompleted {
        void onProjectPosterSaved(boolean z);
    }

    private ProjectPosterTask() {
    }

    public static ProjectPosterTask getInstance() {
        if (instance == null) {
            instance = new ProjectPosterTask();
        }
        return instance;
    }

    public void setTaskCompletedListener(TaskCompleted taskCompleted) {
        this.taskCompleted = taskCompleted;
    }

    public void setProjectPosterResources(ProjectPosterResources projectPosterResources) {
        this.projectPosterResources = projectPosterResources;
    }

    public String generateFilepath(String str) {
        String str2 = internalStorageDirectory + File.separator + "appSavedItems" + File.separator + "Projects" + File.separator + "v01" + File.separator + AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID() + File.separator + str;
        new File(str2).mkdirs();
        return str2 + File.separator + "Poster.jpg";
    }

    private Bitmap padBitmap(Bitmap bitmap, int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth() + (i * 2), bitmap.getHeight() + (i2 * 2), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawRGB(0, 0, 0);
        canvas.drawBitmap(bitmap, i, i2, (Paint) null);
        return bitmapCreateBitmap;
    }

    private Bitmap scaleBitmap(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), new RectF(0.0f, 0.0f, 1280.0f, 720.0f), Matrix.ScaleToFit.CENTER);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private boolean saveBitmap(Bitmap bitmap, String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
                file = new File(str);
                Log.e("file exist", "" + file + ",Bitmap= " + str);
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static boolean isRunning() {
        return running;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        running = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(Project... projectArr) {
        Exception e2;
        Bitmap frameAtTime;
        Exception e3;
        Project project = projectArr[0];
        String strGenerateFilepath = Utilities.generateFilepath(project.projectKey, "Poster.jpg");
        if (isCancelled()) {
            this.taskSuccess = false;
            Log.d("ProjectPosterTask", "cancelling 1");
            return null;
        }
        switch (project.getThumbType()) {
            case STORY_CARD:
            case IMAGE_NON_TITLE:
            case IMAGE_TITLE:
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    frameAtTime = Utilities.getScaledAdjustedBitmap(project.getThumbPath(), 1280, 720);
                    try {
                        Log.d("ProjectPosterTask", "image poster time = " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    } catch (Exception e4) {
                        e3 = e4;
                        this.taskSuccess = false;
                        e3.printStackTrace();
                    }
                } catch (Exception e5) {
                    e3 = e5;
                    frameAtTime = null;
                }
                break;
            case VIDEO:
                try {
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    Log.i("ThumbLog", "ProjectPoster Fetching Frame");
                    ClipExtractor clipExtractor = new ClipExtractor(PremiereClipApplication.getContext());
                    if (!clipExtractor.setDataSource(project.getThumbPath(), true)) {
                        frameAtTime = null;
                    } else {
                        Clip clip = project.getSequence().getClips().get(0);
                        long startTimeUs = clip.getStartTimeUs();
                        if (startTimeUs == 0) {
                            startTimeUs = 600000;
                            if (clip.getDurationUs() < 600000) {
                                startTimeUs = clip.getDurationUs() / 2;
                            }
                        }
                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                        Log.d("ProjectPosterTask", "video data source time = " + (jCurrentTimeMillis3 - jCurrentTimeMillis2));
                        frameAtTime = clipExtractor.getFrameAtTime(startTimeUs, 1280, 720, false);
                        try {
                            clipExtractor.release();
                            Log.d("ProjectPosterTask", "video get frame time = " + (System.currentTimeMillis() - jCurrentTimeMillis3));
                        } catch (Exception e6) {
                            e2 = e6;
                            this.taskSuccess = false;
                            e2.printStackTrace();
                        }
                    }
                } catch (Exception e7) {
                    e2 = e7;
                    frameAtTime = null;
                }
                break;
            default:
                this.taskSuccess = false;
                frameAtTime = null;
                break;
        }
        if (isCancelled()) {
            this.taskSuccess = false;
            Log.d("ProjectPosterTask", "cancelling 2");
            return null;
        }
        if (frameAtTime != null) {
            int width = frameAtTime.getWidth();
            int height = frameAtTime.getHeight();
            Log.d("ProjectPosterTask", "Original: w = " + width + ", h = " + height);
            if (height > 720 || width > 1280) {
                Bitmap bitmapScaleBitmap = scaleBitmap(frameAtTime);
                frameAtTime.recycle();
                frameAtTime = bitmapScaleBitmap;
            }
            Log.d("ProjectPosterTask", "After scale: w = " + frameAtTime.getWidth() + ", h = " + frameAtTime.getHeight());
            if (!saveBitmap(frameAtTime, strGenerateFilepath.replaceFirst(AndroidMiscUtils.IMAGE_TYPE, "_normal.jpg"))) {
                this.taskSuccess = false;
                Log.d("ProjectPosterTask", "Normal poster bitmap could not be saved");
                return null;
            }
            if (isCancelled()) {
                this.taskSuccess = false;
                Log.d("ProjectPosterTask", "cancelling 3");
                return null;
            }
            try {
                Clip posterClip = project.getPosterClip();
                if (posterClip != null && project.shouldApplyLookOnPoster() && this.projectPosterResources != null) {
                    frameAtTime = this.projectPosterResources.applyLook(frameAtTime, posterClip);
                }
                if (isCancelled()) {
                    this.taskSuccess = false;
                    Log.d("ProjectPosterTask", "cancelling 5");
                    return null;
                }
                if (!saveBitmap(frameAtTime, strGenerateFilepath)) {
                    this.taskSuccess = false;
                    Log.d("ProjectPosterTask", "poster bitmap could not be saved");
                    return null;
                }
                String mD5HashFromFilePath = Utilities.getMD5HashFromFilePath(strGenerateFilepath, true);
                String base64HashFromHexHash = null;
                if (mD5HashFromFilePath != null) {
                    base64HashFromHexHash = Utilities.getBase64HashFromHexHash(mD5HashFromFilePath);
                }
                project.setPosterPath(strGenerateFilepath);
                project.setPosterHashValue(base64HashFromHexHash);
                project.setNormalPosterPath(strGenerateFilepath.replaceFirst(AndroidMiscUtils.IMAGE_TYPE, "_normal.jpg"));
            } catch (InterruptedException e8) {
                Log.d("ProjectPosterTask", "interrupted");
                e8.printStackTrace();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void r4) {
        Log.d("ProjectPosterTask", "onPostExecute: taskSuccess = " + this.taskSuccess);
        instance = new ProjectPosterTask();
        running = false;
        if (this.taskCompleted != null) {
            this.taskCompleted.onProjectPosterSaved(this.taskSuccess);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        if (this.projectPosterResources != null) {
            this.projectPosterResources.cancel();
        }
        Log.d("ProjectPosterTask", "onCancelled");
        instance = new ProjectPosterTask();
        running = false;
    }
}
