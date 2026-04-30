.class public Lcom/behance/sdk/util/BehanceSDKUtils;
.super Ljava/lang/Object;
.source "BehanceSDKUtils.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static restrictedCharForTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImageToGallery(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    const-string/jumbo v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 153
    return-void
.end method

.method public static cleanUpTagsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 224
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "FF0C"

    aput-object v1, v2, v0

    .line 225
    const-string/jumbo v1, ""

    .line 226
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 227
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 228
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string/jumbo v4, ","

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v1
.end method

.method public static combineStringsWithSeperateor(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static createTempImageFile()Ljava/io/File;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 70
    const-string/jumbo v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 317
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 320
    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->deleteRecursive(Ljava/io/File;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 325
    :cond_1
    return-void
.end method

.method public static getAdobeAssetMimeTypes(Ljava/util/List;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    const-string/jumbo v3, "jpg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "jpeg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v3, "png"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_3
    const-string/jumbo v3, "gif"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_4
    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 219
    :goto_1
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAllowedFileExtensionsForProfileImage()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    .line 193
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "JPG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "JPEG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "PNG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    const-string/jumbo v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProfileImage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getAllowedFileExtensionsForProjectImage()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    .line 176
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "JPG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "JPEG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "PNG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    const-string/jumbo v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->allowedFileExtensionsForProjectImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getBehanceMobileTool(Landroid/content/res/Resources;)Lcom/behance/sdk/dto/BehanceSDKTagDTO;
    .locals 4

    .prologue
    .line 415
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;-><init>()V

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setApproved(Z)V

    .line 417
    const-string/jumbo v1, "9"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategory(Ljava/lang/String;)V

    .line 418
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategoryId(I)V

    .line 419
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_tag_behance_mobile_category:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategoryLabel(Ljava/lang/String;)V

    .line 420
    const-wide/32 v2, 0x1cd9be0f

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setId(J)V

    .line 421
    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_tag_behance_mobile_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setTitle(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "/search?tools=484032015"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setUrl(Ljava/lang/String;)V

    .line 423
    return-object v0
.end method

.method public static getCreativeFieldsIdString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCreativeFieldsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 160
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 161
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 163
    if-le v2, v0, :cond_1

    move v0, v1

    .line 164
    :cond_1
    if-ne v0, v1, :cond_2

    .line 165
    const-string/jumbo v0, ""

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHasTranslucentNav(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 366
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getSoftButtonsBarSizePort(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_transparentNavBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIdFromOb(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    instance-of v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    if-eqz v0, :cond_0

    .line 390
    check-cast p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 400
    :goto_0
    return-object p0

    .line 391
    :cond_0
    instance-of v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    if-eqz v0, :cond_1

    .line 392
    check-cast p0, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 393
    :cond_1
    instance-of v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    if-eqz v0, :cond_2

    .line 394
    check-cast p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_2
    instance-of v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    if-eqz v0, :cond_3

    .line 396
    check-cast p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 397
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 398
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 400
    :cond_4
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 378
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 382
    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKUtils;->getIdFromOb(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSoftButtonsBarSizePort(Landroid/app/Activity;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 352
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 354
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 356
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 357
    if-le v1, v2, :cond_0

    .line 358
    sub-int v0, v1, v2

    .line 362
    :cond_0
    return v0
.end method

.method public static getTranslucentNavHeight(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 370
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getHasTranslucentNav(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_nav_bar_spacer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    if-nez p0, :cond_1

    move v1, v2

    .line 338
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 333
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 334
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 338
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    if-nez p0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTagValidForProject(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    .line 238
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "~"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "`"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "!"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "$"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "^"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "\\"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKUtils;->restrictedCharForTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 278
    :goto_0
    return v0

    .line 276
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 278
    goto :goto_0
.end method

.method public static setContentViewDimensions(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_show_view_full_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 121
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 123
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 124
    int-to-float v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static setContentViewPaddings(Landroid/content/Context;Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 137
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 141
    int-to-float v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    sub-int v0, v1, v0

    .line 142
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    :cond_0
    return-void
.end method

.method public static shouldHideStatusBarOnScroll()Z
    .locals 2

    .prologue
    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 404
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    const-string/jumbo v0, ""

    .line 411
    :goto_0
    return-object v0

    .line 406
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 411
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static validateImageForProject(Lcom/behance/sdk/project/modules/ImageModule;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;
    .locals 4

    .prologue
    .line 288
    if-eqz p0, :cond_4

    .line 289
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getFile()Ljava/io/File;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 295
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->getAllowedFileExtensionsForProjectImage()Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->INVALID_FILE_TYPE:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    .line 312
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->INVALID_FILE_TYPE:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/project/modules/ImageModule;->getSizeInBytes()J

    move-result-wide v0

    .line 306
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 307
    :cond_2
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->INVALID_SIZE:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    goto :goto_0

    .line 309
    :cond_3
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->VALID:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    goto :goto_0

    .line 312
    :cond_4
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->INVALID:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    goto :goto_0
.end method

.method public static validateImageForProject(Ljava/io/File;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v0, p0}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 283
    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->validateImageForProject(Lcom/behance/sdk/project/modules/ImageModule;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    move-result-object v0

    return-object v0
.end method
