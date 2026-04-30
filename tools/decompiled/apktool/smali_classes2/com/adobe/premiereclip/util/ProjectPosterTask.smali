.class public Lcom/adobe/premiereclip/util/ProjectPosterTask;
.super Landroid/os/AsyncTask;
.source "ProjectPosterTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/adobe/premiereclip/project/Project;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x2d0

.field private static final MAX_WIDTH:I = 0x500

.field private static instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

.field private static internalStorageDirectory:Ljava/lang/String;

.field private static running:Z


# instance fields
.field private projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

.field private taskCompleted:Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;

.field private taskSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->internalStorageDirectory:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/util/ProjectPosterTask;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

    .line 60
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

    return-object v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->running:Z

    return v0
.end method

.method private padBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {v1, v3, v3, v3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 84
    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    return-object v0
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "file exist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",Bitmap= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 90
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x44a00000    # 1280.0f

    const/high16 v4, 0x44340000    # 720.0f

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->doInBackground([Lcom/adobe/premiereclip/project/Project;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/adobe/premiereclip/project/Project;)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v0, 0x0

    aget-object v8, p1, v0

    .line 139
    iget-object v0, v8, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    const-string/jumbo v1, "Poster.jpg"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/Utilities;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 143
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 147
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask$1;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->getThumbType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    :cond_1
    move-object v0, v7

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 197
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :pswitch_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x500

    const/16 v4, 0x2d0

    invoke-static {v0, v1, v4}, Lcom/adobe/premiereclip/util/Utilities;->getScaledAdjustedBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 155
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 156
    const-string/jumbo v1, "ProjectPosterTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "image poster time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 164
    :pswitch_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "ProjectPoster Fetching Frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Lcom/adobe/customextractor/ClipExtractor;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/ClipExtractor;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/customextractor/ClipExtractor;->setDataSource(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 172
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    .line 173
    const-wide/16 v10, 0x0

    cmp-long v6, v2, v10

    if-nez v6, :cond_2

    .line 174
    const-wide/32 v2, 0x927c0

    .line 175
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v10

    cmp-long v6, v10, v2

    if-gez v6, :cond_2

    .line 176
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v2

    const-wide/16 v10, 0x2

    div-long/2addr v2, v10

    .line 179
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 180
    const-string/jumbo v0, "ProjectPosterTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "video data source time = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v4, v10, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v4, 0x500

    const/16 v5, 0x2d0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/customextractor/ClipExtractor;->getFrameAtTime(JIIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 182
    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/customextractor/ClipExtractor;->release()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    const-string/jumbo v1, "ProjectPosterTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video get frame time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 186
    :catch_1
    move-exception v1

    .line 187
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 188
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 201
    :cond_3
    if-eqz v0, :cond_c

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 204
    const-string/jumbo v3, "ProjectPosterTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Original: w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v3, 0x2d0

    if-gt v2, v3, :cond_4

    const/16 v2, 0x500

    if-le v1, v2, :cond_5

    .line 210
    :cond_4
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 216
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 218
    const-string/jumbo v3, "ProjectPosterTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "After scale: w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", h = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string/jumbo v1, ".jpg"

    const-string/jumbo v2, "_normal.jpg"

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    .line 221
    if-nez v1, :cond_6

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 223
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "Normal poster bitmap could not be saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 229
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 235
    :cond_7
    :try_start_4
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_8

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/Project;->shouldApplyLookOnPoster()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    if-eqz v2, :cond_8

    .line 237
    iget-object v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->applyLook(Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/project/sequence/Clip;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    :cond_8
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 244
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 248
    :cond_9
    invoke-direct {p0, v0, v9}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 249
    if-nez v0, :cond_a

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    .line 251
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "poster bitmap could not be saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 255
    :cond_a
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/adobe/premiereclip/util/Utilities;->getMD5HashFromFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 256
    const/4 v0, 0x0

    .line 257
    if-eqz v1, :cond_b

    .line 258
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getBase64HashFromHexHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_b
    invoke-virtual {v8, v9}, Lcom/adobe/premiereclip/project/Project;->setPosterPath(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v8, v0}, Lcom/adobe/premiereclip/project/Project;->setPosterHashValue(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, ".jpg"

    const-string/jumbo v1, "_normal.jpg"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/adobe/premiereclip/project/Project;->setNormalPosterPath(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 270
    :cond_c
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 264
    :catch_2
    move-exception v0

    .line 265
    const-string/jumbo v1, "ProjectPosterTask"

    const-string/jumbo v2, "interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 186
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_3

    .line 157
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adobe/premiereclip/util/ProjectPosterTask;->internalStorageDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "appSavedItems"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Projects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "v01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Poster.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->cancel()V

    .line 289
    :cond_0
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

    .line 291
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->running:Z

    .line 292
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 275
    const-string/jumbo v0, "ProjectPosterTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute: taskSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/ProjectPosterTask;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->instance:Lcom/adobe/premiereclip/util/ProjectPosterTask;

    .line 277
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->running:Z

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskCompleted:Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskCompleted:Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskSuccess:Z

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;->onProjectPosterSaved(Z)V

    .line 281
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->running:Z

    .line 128
    return-void
.end method

.method public setProjectPosterResources(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->projectPosterResources:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    .line 69
    return-void
.end method

.method public setTaskCompletedListener(Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/util/ProjectPosterTask;->taskCompleted:Lcom/adobe/premiereclip/util/ProjectPosterTask$TaskCompleted;

    .line 65
    return-void
.end method
