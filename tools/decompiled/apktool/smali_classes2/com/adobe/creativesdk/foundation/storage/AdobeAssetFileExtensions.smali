.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;
.super Ljava/lang/Object;
.source "AdobeAssetFileExtensions.java"


# static fields
.field public static final kAdobeFileExtensionTypeAI:Ljava/lang/String; = "ai"

.field public static final kAdobeFileExtensionTypeAIT:Ljava/lang/String; = "ait"

.field public static final kAdobeFileExtensionTypeAdobeBrush:Ljava/lang/String; = "abr"

.field public static final kAdobeFileExtensionTypeBMP:Ljava/lang/String; = "bmp"

.field public static final kAdobeFileExtensionTypeDMG:Ljava/lang/String; = "dmg"

.field public static final kAdobeFileExtensionTypeDNG:Ljava/lang/String; = "dng"

.field public static final kAdobeFileExtensionTypeEPS:Ljava/lang/String; = "eps"

.field public static final kAdobeFileExtensionTypeGIF:Ljava/lang/String; = "gif"

.field public static final kAdobeFileExtensionTypeIDML:Ljava/lang/String; = "idml"

.field public static final kAdobeFileExtensionTypeIDMS:Ljava/lang/String; = "idms"

.field public static final kAdobeFileExtensionTypeINDD:Ljava/lang/String; = "indd"

.field public static final kAdobeFileExtensionTypeINDT:Ljava/lang/String; = "indt"

.field public static final kAdobeFileExtensionTypeJPEG:Ljava/lang/String; = "jpg"

.field public static final kAdobeFileExtensionTypeMOV:Ljava/lang/String; = "mov"

.field public static final kAdobeFileExtensionTypeMP4:Ljava/lang/String; = "mp4"

.field public static final kAdobeFileExtensionTypePDF:Ljava/lang/String; = "pdf"

.field public static final kAdobeFileExtensionTypePNG:Ljava/lang/String; = "png"

.field public static final kAdobeFileExtensionTypePSB:Ljava/lang/String; = "psb"

.field public static final kAdobeFileExtensionTypePSD:Ljava/lang/String; = "psd"

.field public static final kAdobeFileExtensionTypeSHAPE:Ljava/lang/String; = "shape"

.field public static final kAdobeFileExtensionTypeSVG:Ljava/lang/String; = "svg"

.field public static final kAdobeFileExtensionTypeTIFF:Ljava/lang/String; = "tiff"

.field public static final kAdobeFileExtensionTypeXd:Ljava/lang/String; = "xd"

.field public static final kAdobeFileExtensionTypeZip:Ljava/lang/String; = "zip"

.field public static final kAdobeMimeTypeAdobeBrush:Ljava/lang/String; = "image/x-adobe-photoshop-brush"

.field public static final kAdobeMimeTypeAdobeMuseCollection:Ljava/lang/String; = "application/vnd.adobe.muse-collection"

.field public static final kAdobeMimeTypeBMP:Ljava/lang/String; = "image/bmp"

.field public static final kAdobeMimeTypeDMG:Ljava/lang/String; = "application/x-diskcopy"

.field public static final kAdobeMimeTypeDNG:Ljava/lang/String; = "image/x-adobe-dng"

.field public static final kAdobeMimeTypeGIF:Ljava/lang/String; = "image/gif"

.field public static final kAdobeMimeTypeIDML:Ljava/lang/String; = "application/vnd.adobe.indesign-idml-package"

.field public static final kAdobeMimeTypeIDMS:Ljava/lang/String; = "application/vnd.adobe.indesign-idms"

.field public static final kAdobeMimeTypeIllustrator:Ljava/lang/String; = "application/illustrator"

.field public static final kAdobeMimeTypeInDesign:Ljava/lang/String; = "application/x-indesign"

.field public static final kAdobeMimeTypeJPEG:Ljava/lang/String; = "image/jpeg"

.field public static final kAdobeMimeTypeMP4:Ljava/lang/String; = "video/mp4"

.field public static final kAdobeMimeTypeOctetStream:Ljava/lang/String; = "application/octet-stream"

.field public static final kAdobeMimeTypePDF:Ljava/lang/String; = "application/pdf"

.field public static final kAdobeMimeTypePNG:Ljava/lang/String; = "image/png"

.field public static final kAdobeMimeTypePhotoshop:Ljava/lang/String; = "image/vnd.adobe.photoshop"

.field public static final kAdobeMimeTypePostscript:Ljava/lang/String; = "application/postscript"

.field public static final kAdobeMimeTypeQuicktime:Ljava/lang/String; = "video/quicktime"

.field public static final kAdobeMimeTypeRaw:Ljava/lang/String; = "image/x-dcraw"

.field public static final kAdobeMimeTypeSVG:Ljava/lang/String; = "image/svg+xml"

.field public static final kAdobeMimeTypeShape:Ljava/lang/String; = "image/vnd.adobe.shape+svg"

.field public static final kAdobeMimeTypeTIFF:Ljava/lang/String; = "image/tiff"

.field public static final kAdobeMimeTypeVideoMetadata:Ljava/lang/String; = "application/vnd.adobe.ccv.videometadata"

.field public static final kAdobeMimeTypeXD:Ljava/lang/String; = "application/vnd.adobe.sparkler.project+dcxucf"

.field public static final kAdobeMimeTypeZip:Ljava/lang/String; = "application/zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    if-nez p0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "image/bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const-string/jumbo v0, "bmp"

    goto :goto_0

    .line 246
    :cond_2
    const-string/jumbo v2, "application/x-diskcopy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    const-string/jumbo v0, "dmg"

    goto :goto_0

    .line 249
    :cond_3
    const-string/jumbo v2, "image/x-adobe-dng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    const-string/jumbo v0, "dng"

    goto :goto_0

    .line 252
    :cond_4
    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    const-string/jumbo v0, "gif"

    goto :goto_0

    .line 255
    :cond_5
    const-string/jumbo v2, "application/vnd.adobe.indesign-idml-package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 257
    const-string/jumbo v0, "idml"

    goto :goto_0

    .line 259
    :cond_6
    const-string/jumbo v2, "application/vnd.adobe.indesign-idms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 261
    const-string/jumbo v0, "idms"

    goto :goto_0

    .line 263
    :cond_7
    const-string/jumbo v2, "application/illustrator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 265
    const-string/jumbo v0, "ai"

    goto :goto_0

    .line 267
    :cond_8
    const-string/jumbo v2, "application/x-indesign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    const-string/jumbo v0, "indd"

    goto :goto_0

    .line 271
    :cond_9
    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 273
    const-string/jumbo v0, "jpg"

    goto :goto_0

    .line 275
    :cond_a
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 277
    const-string/jumbo v0, "mp4"

    goto/16 :goto_0

    .line 279
    :cond_b
    const-string/jumbo v2, "application/pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 281
    const-string/jumbo v0, "pdf"

    goto/16 :goto_0

    .line 284
    :cond_c
    const-string/jumbo v2, "image/vnd.adobe.photoshop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 286
    const-string/jumbo v0, "psd"

    goto/16 :goto_0

    .line 289
    :cond_d
    const-string/jumbo v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 291
    const-string/jumbo v0, "png"

    goto/16 :goto_0

    .line 293
    :cond_e
    const-string/jumbo v2, "application/postscript"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 295
    const-string/jumbo v0, "eps"

    goto/16 :goto_0

    .line 297
    :cond_f
    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 299
    const-string/jumbo v0, "mov"

    goto/16 :goto_0

    .line 301
    :cond_10
    const-string/jumbo v2, "image/vnd.adobe.shape+svg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 303
    const-string/jumbo v0, "shape"

    goto/16 :goto_0

    .line 305
    :cond_11
    const-string/jumbo v2, "image/x-adobe-photoshop-brush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 307
    const-string/jumbo v0, "abr"

    goto/16 :goto_0

    .line 309
    :cond_12
    const-string/jumbo v2, "image/svg+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 311
    const-string/jumbo v0, "svg"

    goto/16 :goto_0

    .line 313
    :cond_13
    const-string/jumbo v2, "image/tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 315
    const-string/jumbo v0, "tiff"

    goto/16 :goto_0

    .line 317
    :cond_14
    const-string/jumbo v2, "application/zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 319
    const-string/jumbo v0, "zip"

    goto/16 :goto_0

    .line 321
    :cond_15
    const-string/jumbo v2, "application/vnd.adobe.sparkler.project+dcxucf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v0, "xd"

    goto/16 :goto_0
.end method

.method public static getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string/jumbo v1, "ai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string/jumbo v0, "application/illustrator"

    .line 443
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const-string/jumbo v1, "ait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string/jumbo v0, "application/pdf"

    goto :goto_0

    .line 353
    :cond_1
    const-string/jumbo v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    const-string/jumbo v0, "image/bmp"

    goto :goto_0

    .line 357
    :cond_2
    const-string/jumbo v1, "dmg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    const-string/jumbo v0, "application/x-diskcopy"

    goto :goto_0

    .line 361
    :cond_3
    const-string/jumbo v1, "dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    const-string/jumbo v0, "image/x-adobe-dng"

    goto :goto_0

    .line 365
    :cond_4
    const-string/jumbo v1, "eps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    const-string/jumbo v0, "application/postscript"

    goto :goto_0

    .line 369
    :cond_5
    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 371
    const-string/jumbo v0, "image/gif"

    goto :goto_0

    .line 373
    :cond_6
    const-string/jumbo v1, "idml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 375
    const-string/jumbo v0, "application/vnd.adobe.indesign-idml-package"

    goto :goto_0

    .line 377
    :cond_7
    const-string/jumbo v1, "idms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 379
    const-string/jumbo v0, "application/vnd.adobe.indesign-idms"

    goto :goto_0

    .line 381
    :cond_8
    const-string/jumbo v1, "indd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 383
    const-string/jumbo v0, "application/x-indesign"

    goto :goto_0

    .line 385
    :cond_9
    const-string/jumbo v1, "indt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 387
    const-string/jumbo v0, "application/octet-stream"

    goto/16 :goto_0

    .line 389
    :cond_a
    const-string/jumbo v1, "mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 391
    const-string/jumbo v0, "video/quicktime"

    goto/16 :goto_0

    .line 393
    :cond_b
    const-string/jumbo v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 395
    const-string/jumbo v0, "video/mp4"

    goto/16 :goto_0

    .line 397
    :cond_c
    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 399
    const-string/jumbo v0, "image/jpeg"

    goto/16 :goto_0

    .line 401
    :cond_d
    const-string/jumbo v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 403
    const-string/jumbo v0, "application/pdf"

    goto/16 :goto_0

    .line 405
    :cond_e
    const-string/jumbo v1, "psb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 407
    const-string/jumbo v0, "image/vnd.adobe.photoshop"

    goto/16 :goto_0

    .line 409
    :cond_f
    const-string/jumbo v1, "psd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 411
    const-string/jumbo v0, "image/vnd.adobe.photoshop"

    goto/16 :goto_0

    .line 413
    :cond_10
    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 415
    const-string/jumbo v0, "image/png"

    goto/16 :goto_0

    .line 417
    :cond_11
    const-string/jumbo v1, "shape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 419
    const-string/jumbo v0, "image/vnd.adobe.shape+svg"

    goto/16 :goto_0

    .line 421
    :cond_12
    const-string/jumbo v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 423
    const-string/jumbo v0, "image/svg+xml"

    goto/16 :goto_0

    .line 425
    :cond_13
    const-string/jumbo v1, "tiff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 427
    const-string/jumbo v0, "image/tiff"

    goto/16 :goto_0

    .line 429
    :cond_14
    const-string/jumbo v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 431
    const-string/jumbo v0, "application/zip"

    goto/16 :goto_0

    .line 433
    :cond_15
    const-string/jumbo v1, "xd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 435
    const-string/jumbo v0, "application/vnd.adobe.sparkler.project+dcxucf"

    goto/16 :goto_0

    .line 437
    :cond_16
    const-string/jumbo v1, "abr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 439
    const-string/jumbo v0, "image/x-adobe-photoshop-brush"

    goto/16 :goto_0

    .line 443
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
