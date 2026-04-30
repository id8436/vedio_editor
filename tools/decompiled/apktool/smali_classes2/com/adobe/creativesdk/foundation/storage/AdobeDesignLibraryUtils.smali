.class public Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryUtils.java"


# static fields
.field public static final AdobeCharacterStyleMimeType:Ljava/lang/String; = "application/vnd.adobe.characterstyle+json"

.field public static final AdobeColorMimeType:Ljava/lang/String; = "application/vnd.adobe.color+json"

.field public static final AdobeColorThemeMimeType:Ljava/lang/String; = "application/vnd.adobe.colortheme+json"

.field public static final AdobeDesignLibrary3DLightElementType:Ljava/lang/String; = "application/vnd.adobe.element.light+dcx"

.field public static final AdobeDesignLibrary3DMaterialElementType:Ljava/lang/String; = "application/vnd.adobe.element.material+dcx"

.field public static final AdobeDesignLibrary3DModelElementType:Ljava/lang/String; = "application/vnd.adobe.element.3d+dcx"

.field public static final AdobeDesignLibraryAnimationElementType:Ljava/lang/String; = "application/vnd.adobe.element.animation+dcx"

.field public static final AdobeDesignLibraryBrushElementType:Ljava/lang/String; = "application/vnd.adobe.element.brush+dcx"

.field public static final AdobeDesignLibraryCharacterStyleElementType:Ljava/lang/String; = "application/vnd.adobe.element.characterstyle+dcx"

.field public static final AdobeDesignLibraryColorElementType:Ljava/lang/String; = "application/vnd.adobe.element.color+dcx"

.field public static final AdobeDesignLibraryColorThemeElementType:Ljava/lang/String; = "application/vnd.adobe.element.colortheme+dcx"

.field public static final AdobeDesignLibraryImageElementType:Ljava/lang/String; = "application/vnd.adobe.element.image+dcx"

.field public static final AdobeDesignLibraryLayerStyleElementType:Ljava/lang/String; = "application/vnd.adobe.element.layerstyle+dcx"

.field public static final AdobeDesignLibraryLookElementType:Ljava/lang/String; = "application/vnd.adobe.element.look+dcx"

.field public static final AdobeDesignLibraryPatternElementType:Ljava/lang/String; = "application/vnd.adobe.element.pattern+dcx"

.field public static final AdobeDesignLibraryTemplateElementType:Ljava/lang/String; = "application/vnd.adobe.element.template+dcx"

.field public static final AdobeDesignLibraryVideoElementType:Ljava/lang/String; = "application/vnd.adobe.element.video+dcx"

.field public static final AdobeMimeTypeDataKey:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 127
    if-nez p0, :cond_0

    .line 128
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v1, "cannot find image file url"

    invoke-static {v0, v9, v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 134
    const-string/jumbo v0, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {p2, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 135
    if-nez v0, :cond_1

    move-object v0, v9

    .line 150
    :goto_0
    return-object v0

    .line 139
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;->getFileMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "primary"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 142
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9, v9}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid Argument"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 147
    goto :goto_0
.end method

.method public static addRGBColor(Ljava/lang/Integer;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    if-nez p0, :cond_0

    .line 165
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v2, "cannot find the rgb color data"

    invoke-static {v0, v1, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 169
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 171
    const-string/jumbo v0, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {p2, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v2

    .line 172
    if-nez v2, :cond_1

    .line 198
    :goto_0
    return-object v1

    .line 177
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\"mode\":\"RGB\",\"value\":{\"r\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",\"g\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",\"b\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    const-string/jumbo v3, "application/vnd.adobe.color+json"

    const-string/jumbo v4, "primary"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v3

    .line 191
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "color"

    invoke-virtual {v3, v0, v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    :try_start_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v2

    .line 198
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    .line 196
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static addRendition(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v1, "cannot find rendition file URL"

    invoke-static {v0, v3, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 226
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 227
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 230
    :cond_3
    const/4 v4, 0x0

    const-string/jumbo v5, "rendition"

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method

.method static getFileMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageFilePathForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 272
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {v0, p5, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 283
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    invoke-virtual {v0, p5, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public static getRGBColorForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_3

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 306
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.color+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 307
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "color"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 308
    if-eqz v0, :cond_2

    const-string/jumbo v2, "RGB"

    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 309
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 310
    const/16 v1, 0xff

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "g"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "b"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRGBColorThemeForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 325
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 351
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    if-eqz v0, :cond_4

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 331
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.colortheme+json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 332
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "colortheme"

    invoke-virtual {v0, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 333
    if-eqz v0, :cond_2

    const-string/jumbo v3, "swatches"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    :try_start_0
    const-string/jumbo v3, "swatches"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 336
    instance-of v3, v0, Lorg/json/JSONArray;

    if-nez v3, :cond_3

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 338
    :cond_3
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;->swatchesToUIColorArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 342
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 351
    goto :goto_0
.end method

.method public static getRepresentationTypesForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 248
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 253
    goto :goto_0
.end method

.method static swatchesToUIColorArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 356
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 359
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 363
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 365
    if-eqz v0, :cond_0

    .line 366
    const-string/jumbo v3, "r"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 367
    const-string/jumbo v4, "g"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 368
    const-string/jumbo v5, "b"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 369
    invoke-static {v3, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 375
    const/4 v0, 0x0

    .line 378
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
