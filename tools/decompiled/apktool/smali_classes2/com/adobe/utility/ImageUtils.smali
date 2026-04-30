.class public final Lcom/adobe/utility/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final QUALITY:I = 0x64

.field public static final SOURCE_HEIGHT:Ljava/lang/String; = "height"

.field public static final SOURCE_TYPE:Ljava/lang/String; = "Source"

.field public static final SOURCE_TYPE_CAMERA:Ljava/lang/String; = "Camera"

.field public static final SOURCE_TYPE_CC_LIGHT_ROOM:Ljava/lang/String; = "CClibOrLightRoom"

.field public static final SOURCE_TYPE_PICKER:Ljava/lang/String; = "Picker"

.field public static final SOURCE_WIDTH:Ljava/lang/String; = "width"

.field private static final sMaxResolutionSize:D = 2.5690112E7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static checkImageMaxResolution(II)Z
    .locals 4

    .prologue
    .line 180
    mul-int v0, p1, p0

    int-to-double v0, v0

    const-wide v2, 0x4178800000000000L    # 2.5690112E7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkImageMaxResolution(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 172
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 173
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 174
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 175
    invoke-static {v0, v1}, Lcom/adobe/utility/ImageUtils;->checkImageMaxResolution(II)Z

    move-result v0

    return v0
.end method

.method public static checkMaxResolution(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/adobe/utility/ErrorDialogButtonInterface;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "Source"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CClibOrLightRoom"

    if-ne v0, v2, :cond_1

    .line 214
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    :goto_0
    const-string/jumbo v2, "height"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "height"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    :goto_1
    invoke-static {v0, v2}, Lcom/adobe/utility/ImageUtils;->checkImageMaxResolution(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p4, p2, p3, p6}, Lcom/adobe/utility/ImageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/ErrorDialogButtonInterface;)V

    move v1, v3

    .line 253
    :cond_0
    :goto_2
    return v1

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, ""

    .line 234
    const-string/jumbo v2, "Source"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "Source"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Picker"

    if-ne v2, v4, :cond_3

    .line 240
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-static {p1, p5, v0}, Lcom/adobe/utility/AndroidMiscUtils;->getPathToImageFromPicker(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/adobe/utility/ImageUtils;->checkImageMaxResolution(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p4, p2, p3, p6}, Lcom/adobe/utility/ImageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/ErrorDialogButtonInterface;)V

    move v1, v3

    .line 251
    goto :goto_2

    .line 242
    :cond_3
    const-string/jumbo v2, "Source"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "Source"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Camera"

    if-ne v2, v4, :cond_2

    .line 245
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static getImageDimensions(Ljava/lang/String;)Lcom/adobe/common/Size;
    .locals 5

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 140
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 151
    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 155
    :cond_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2, v1}, Lcom/adobe/common/Size;->makeSize(II)Lcom/adobe/common/Size;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 157
    :cond_1
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v1}, Lcom/adobe/common/Size;->makeSize(II)Lcom/adobe/common/Size;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScreenSizeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 257
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-object v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 265
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 269
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v9

    .line 280
    :goto_1
    if-eqz v1, :cond_1

    .line 281
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 282
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 283
    if-eqz v0, :cond_1

    .line 284
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 284
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 286
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 287
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 293
    :goto_2
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 294
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v1, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_1
    const/16 v1, -0x5a

    .line 272
    goto :goto_1

    .line 274
    :pswitch_2
    const/16 v1, 0xb4

    .line 275
    goto :goto_1

    .line 277
    :pswitch_3
    const/16 v1, 0x5a

    goto :goto_1

    .line 290
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move v1, v8

    .line 291
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v7

    goto :goto_2

    .line 290
    :catch_1
    move-exception v0

    move v1, v8

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    move v1, v8

    move-object v2, v0

    move v0, v7

    goto :goto_2

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static resizeImage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 92
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 94
    invoke-static {p0}, Lcom/adobe/utility/ImageUtils;->getImageDimensions(Ljava/lang/String;)Lcom/adobe/common/Size;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getWidth()I

    move-result v3

    if-gt v3, p2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/common/Size;->getHeight()I

    move-result v3

    if-le v3, p2, :cond_1

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getWidth()I

    .line 99
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getHeight()I

    .line 100
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/adobe/common/Size;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getWidth()I

    move-result v3

    mul-int/2addr v3, p2

    .line 103
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getHeight()I

    move-result v0

    div-int v0, v3, v0

    move v3, v0

    .line 112
    :goto_0
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "png"

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    :try_start_1
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 122
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v2, v3, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 128
    :goto_2
    invoke-static {p1, v1, v0}, Lcom/adobe/utility/ImageUtils;->writeBitmapToAFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    .line 130
    :cond_1
    return-object p0

    .line 106
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, p2

    .line 107
    invoke-virtual {v0}, Lcom/adobe/common/Size;->getWidth()I

    move-result v0

    div-int v0, v3, v0

    move v3, p2

    move p2, v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    .line 126
    :goto_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 125
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/ErrorDialogButtonInterface;)V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 190
    const-string/jumbo v1, "OK"

    new-instance v2, Lcom/adobe/utility/ImageUtils$1;

    invoke-direct {v2, p3}, Lcom/adobe/utility/ImageUtils$1;-><init>(Lcom/adobe/utility/ErrorDialogButtonInterface;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeBitmapToAFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const-string/jumbo v0, "jpg"

    .line 57
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p2, v1, :cond_0

    .line 58
    const-string/jumbo v0, "png"

    .line 61
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    invoke-static {p1, p2, v1}, Lcom/adobe/utility/ImageUtils;->writeBitmapToStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    if-eqz v1, :cond_1

    .line 74
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    if-eqz v1, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 75
    :catch_2
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 74
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 79
    :cond_2
    :goto_3
    throw v0

    .line 75
    :catch_3
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 72
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 69
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static writeBitmapToStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    return-void
.end method
