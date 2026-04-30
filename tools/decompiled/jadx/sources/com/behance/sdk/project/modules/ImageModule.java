package com.behance.sdk.project.modules;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.View;
import android.widget.ImageView;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.util.BehanceSDKImageLoaderUtils;
import com.i.a.b.a.b;
import com.i.a.b.d;
import com.i.a.b.f.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ImageModule extends BaseModule {
    private static final ILogger logger = LoggerFactory.getLogger(ImageModule.class);
    private static final long serialVersionUID = 5636447312019606595L;
    private String albumName;
    private transient Bitmap bitmap;
    private boolean defaultThumbnailRotationApplied;
    private File file;
    private int height;
    private long id;
    private int rotation;
    private long sizeInBytes;
    private transient Bitmap thumbnail;
    private int width;

    public ImageModule(long j, String str) {
        this.id = -1L;
        this.rotation = 0;
        this.defaultThumbnailRotationApplied = false;
        this.id = j;
        setFile(new File(str));
        computeImageDimensions();
        getDefaultOrientation();
    }

    public ImageModule(File file) {
        this.id = -1L;
        this.rotation = 0;
        this.defaultThumbnailRotationApplied = false;
        setFile(file);
        computeImageDimensions();
        getDefaultOrientation();
    }

    private void computeImageDimensions() {
        if (this.file != null && this.file.exists() && this.file.isFile()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.file.getAbsolutePath(), options);
            setWidth(options.outWidth);
            setHeight(options.outHeight);
            setSizeInBytes(this.file.length());
        }
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public void clear() {
        clearRotation();
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public ProjectModuleTypes getType() {
        return ProjectModuleTypes.IMAGE;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public File getFile() {
        return this.file;
    }

    private String getFilePath() {
        return this.file.getAbsolutePath();
    }

    private void setFile(File file) {
        this.file = file;
    }

    public Bitmap getThumbNail(Context context) {
        Bitmap thumbNailFromFile = null;
        if (this.thumbnail == null || this.thumbnail.isRecycled()) {
            if (this.id != -1) {
                thumbNailFromFile = MediaStore.Images.Thumbnails.getThumbnail(context.getContentResolver(), this.id, 1, null);
            } else if (this.file != null) {
                thumbNailFromFile = getThumbNailFromFile();
            }
            this.thumbnail = thumbNailFromFile;
            updateThumbnailForDefaultRotation();
        }
        return this.thumbnail;
    }

    private void getDefaultOrientation() {
        if (!this.defaultThumbnailRotationApplied || this.thumbnail == null) {
            try {
                switch (new ExifInterface(this.file.getAbsolutePath()).getAttributeInt("Orientation", 1)) {
                    case 1:
                        this.rotation = 0;
                        break;
                    case 3:
                        this.rotation = 2;
                        break;
                    case 6:
                        this.rotation = 1;
                        break;
                    case 8:
                        this.rotation = 3;
                        break;
                }
                this.defaultThumbnailRotationApplied = true;
            } catch (IOException e2) {
                logger.error("Exception while getting the default orientation", e2);
            }
        }
    }

    private void updateThumbnailForDefaultRotation() {
        if (this.rotation > 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(this.rotation * 90);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.thumbnail, 0, 0, this.thumbnail.getWidth(), this.thumbnail.getHeight(), matrix, true);
            this.thumbnail.recycle();
            this.thumbnail = bitmapCreateBitmap;
        }
    }

    private Bitmap updateThumbnailForRotation(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postRotate(90.0f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private Bitmap getThumbNailFromFile() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        String filePath = getFilePath();
        BitmapFactory.decodeFile(filePath, options);
        int iMin = Math.min(options.outWidth / 400, options.outHeight / 400);
        options.inJustDecodeBounds = false;
        options.inSampleSize = iMin;
        options.inPurgeable = true;
        return BitmapFactory.decodeFile(filePath, options);
    }

    public void rotateImage() {
        if (this.rotation == 3) {
            this.rotation = 0;
        } else {
            this.rotation++;
        }
        Bitmap bitmapUpdateThumbnailForRotation = updateThumbnailForRotation(this.thumbnail);
        recycleBitmaps();
        this.thumbnail = bitmapUpdateThumbnailForRotation;
    }

    public String getName() {
        return this.file.getName();
    }

    public void setAlbumName(String str) {
        this.albumName = str;
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImageModule imageModule = (ImageModule) obj;
        return this.id == imageModule.id && equalObject(this.file, imageModule.file) && equalObject(this.albumName, imageModule.albumName) && this.rotation == imageModule.rotation && this.width == imageModule.width && this.height == imageModule.height;
    }

    private boolean equalObject(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if ((obj != null && obj2 == null) || (obj == null && obj2 != null)) {
            return false;
        }
        return obj.equals(obj2);
    }

    public void recycleBitmaps() {
        recycleThumbnailBitmap();
        recycleImageBitmap();
    }

    public void recycleImageBitmap() {
        if (this.bitmap != null && !this.bitmap.isRecycled()) {
            this.bitmap.recycle();
            this.bitmap = null;
        }
    }

    public void recycleThumbnailBitmap() {
        if (this.thumbnail != null && !this.thumbnail.isRecycled()) {
            this.thumbnail.recycle();
            this.thumbnail = null;
        }
    }

    public int getRotation() {
        return this.rotation;
    }

    public void clearRotation() {
        this.rotation = 0;
        this.defaultThumbnailRotationApplied = false;
        getDefaultOrientation();
        recycleBitmaps();
    }

    public File getFileForUpload() throws IOException {
        File file = this.file;
        if (this.rotation > 0) {
            Bitmap imageBitmap = BehanceSDKImageLoaderUtils.getImageBitmap(getImageUrl());
            Bitmap bitmapUpdateBitmapForRotation = BehanceSDKImageLoaderUtils.updateBitmapForRotation(imageBitmap, this);
            File fileSavebitmap = savebitmap(bitmapUpdateBitmapForRotation, this.file.getName());
            imageBitmap.recycle();
            bitmapUpdateBitmapForRotation.recycle();
            return fileSavebitmap;
        }
        return file;
    }

    private File savebitmap(Bitmap bitmap, String str) throws IOException {
        File file = new File(Environment.getExternalStorageDirectory().toString(), str + "_temp");
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file;
    }

    public int getWidth() {
        return this.width;
    }

    private void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    private void setHeight(int i) {
        this.height = i;
    }

    public long getSizeInBytes() {
        return this.sizeInBytes;
    }

    public void setSizeInBytes(long j) {
        this.sizeInBytes = j;
    }

    public void displayImage(ImageView imageView, a aVar) {
        displayImage(imageView, aVar, BehanceSDKImageLoaderUtils.getDefaultImageLoaderOptions());
    }

    private String getImageUrl() {
        return Uri.decode(Uri.fromFile(this.file).toString());
    }

    public void displayImage(final ImageView imageView, final a aVar, d dVar) {
        String imageUrl = getImageUrl();
        if (this.bitmap == null) {
            BehanceSDKImageLoaderUtils.displayImageFromCacheOrLoadFromServer(imageUrl, imageView, new a() { // from class: com.behance.sdk.project.modules.ImageModule.1
                @Override // com.i.a.b.f.a
                public void onLoadingStarted(String str, View view) {
                    if (aVar != null) {
                        aVar.onLoadingStarted(str, view);
                    }
                }

                @Override // com.i.a.b.f.a
                public void onLoadingFailed(String str, View view, b bVar) {
                    if (aVar != null) {
                        aVar.onLoadingFailed(str, view, bVar);
                    }
                }

                @Override // com.i.a.b.f.a
                public void onLoadingComplete(String str, View view, Bitmap bitmap) {
                    ImageModule.this.bitmap = BehanceSDKImageLoaderUtils.updateBitmapForRotation(bitmap, this);
                    ImageModule.this.setImageViewLayerType(imageView, bitmap);
                    imageView.setImageBitmap(ImageModule.this.bitmap);
                    if (aVar != null) {
                        aVar.onLoadingComplete(str, view, ImageModule.this.bitmap);
                    }
                }

                @Override // com.i.a.b.f.a
                public void onLoadingCancelled(String str, View view) {
                    if (aVar != null) {
                        aVar.onLoadingCancelled(str, view);
                    }
                }
            }, dVar);
            return;
        }
        setImageViewLayerType(imageView, this.bitmap);
        imageView.setImageBitmap(this.bitmap);
        if (aVar != null) {
            aVar.onLoadingComplete(imageUrl, imageView, this.bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageViewLayerType(ImageView imageView, Bitmap bitmap) {
        if (bitmap.getWidth() > 2048 || bitmap.getHeight() > 2048) {
            imageView.setLayerType(1, null);
        } else {
            imageView.setLayerType(2, null);
        }
    }
}
