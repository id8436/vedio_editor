.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryUtilsInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdobeStockElementOfType(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 592
    if-eqz p0, :cond_0

    const-string/jumbo v0, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "application/vnd.adobe.element.video+dcx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "elementType must be image or video"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 650
    :cond_1
    :goto_0
    return-object v1

    .line 598
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 600
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "compAsset must be specified and cannot be a file url"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 601
    goto :goto_0

    .line 604
    :cond_4
    if-eqz p5, :cond_5

    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    if-nez v0, :cond_6

    .line 606
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "renditionAsset must be specified"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 607
    goto :goto_0

    .line 610
    :cond_6
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 612
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "renditionAsset content type must be specified"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 613
    goto :goto_0

    .line 616
    :cond_7
    if-eqz p3, :cond_b

    .line 618
    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    if-eqz v0, :cond_8

    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    :cond_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "licensedAsset url must be specified and cannot be a file url"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 621
    goto :goto_0

    .line 623
    :cond_9
    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 625
    :cond_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "licensedAsset content type must be specified"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 626
    goto/16 :goto_0

    .line 635
    :cond_b
    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 636
    if-nez v1, :cond_c

    move-object v1, v6

    .line 637
    goto/16 :goto_0

    :cond_c
    move-object v0, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 640
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->addStockRepresentationsToLibrary(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    invoke-virtual {p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 643
    goto/16 :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:addAdobeStockElementOfType"

    const-string/jumbo v2, "library element addition failed"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 647
    goto/16 :goto_0
.end method

.method public static addBrushWithPrimary(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v1, "cannot find primary brush file url or content type"

    invoke-static {v0, v3, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 93
    :cond_1
    check-cast p4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 94
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->beginChanges()V

    .line 96
    const-string/jumbo v0, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {p4, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 97
    if-nez v0, :cond_2

    .line 123
    :goto_0
    return-object v3

    .line 101
    :cond_2
    const-string/jumbo v5, "primary"

    move-object v1, p1

    move-object v2, p0

    move-object v6, v3

    move-object v7, v3

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 105
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 108
    :cond_3
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->discardChanges()Z

    .line 109
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 111
    :cond_4
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    if-nez v2, :cond_5

    .line 113
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->discardChanges()Z

    .line 114
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 117
    :cond_5
    const-string/jumbo v5, "alternate"

    move-object v6, v3

    move-object v7, v3

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->endChanges()Z

    move-object v3, v0

    .line 123
    goto :goto_0
.end method

.method public static addCharacterStyle(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v2, "cannot find character style data"

    invoke-static {v1, v0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 210
    :cond_1
    check-cast p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 211
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->beginChanges()V

    .line 213
    const-string/jumbo v1, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {p2, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 214
    if-nez v1, :cond_2

    .line 226
    :goto_0
    return-object v0

    .line 217
    :cond_2
    const-string/jumbo v2, "application/vnd.adobe.characterstyle+json"

    const-string/jumbo v3, "primary"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v2

    .line 219
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "characterstyle"

    invoke-virtual {v2, p0, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    .line 226
    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static addColor(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v2, "cannot find the color data"

    invoke-static {v1, v0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 141
    :cond_1
    check-cast p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 142
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->beginChanges()V

    .line 144
    const-string/jumbo v1, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {p2, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 145
    if-nez v1, :cond_2

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_2
    const-string/jumbo v2, "application/vnd.adobe.color+json"

    const-string/jumbo v3, "primary"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v2

    .line 150
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "color"

    invoke-virtual {v2, p0, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    .line 157
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static addColorTheme(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 170
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 171
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v2, "cannot find color theme data"

    invoke-static {v1, v0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 175
    :cond_1
    check-cast p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 176
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->beginChanges()V

    .line 178
    const-string/jumbo v1, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {p2, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 179
    if-nez v1, :cond_2

    .line 192
    :goto_0
    return-object v0

    .line 182
    :cond_2
    const-string/jumbo v2, "application/vnd.adobe.colortheme+json"

    const-string/jumbo v3, "primary"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v2

    .line 184
    const-string/jumbo v3, "data"

    const-string/jumbo v4, "colortheme"

    invoke-virtual {v2, p0, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v1

    .line 192
    goto :goto_0

    .line 188
    :catch_0
    move-exception v2

    .line 189
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static addStockRepresentationsToLibrary(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Z
    .locals 10

    .prologue
    .line 503
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 505
    :try_start_0
    const-string/jumbo v0, "content_id"

    iget-object v1, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->assetId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string/jumbo v0, "state"

    const-string/jumbo v1, "not_purchased"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "stock_id"

    iget-object v1, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    :cond_0
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->query:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 510
    const-string/jumbo v0, "query"

    iget-object v1, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->query:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    :cond_1
    if-eqz p2, :cond_5

    .line 515
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string/jumbo v5, "primary"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 517
    if-nez v1, :cond_2

    .line 518
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 520
    :cond_2
    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->setWidthHeightAndLengthForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;)V

    .line 523
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v0, "state"

    const-string/jumbo v3, "purchased"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v3, "license"

    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->licenseType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->licenseType:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 527
    const-string/jumbo v0, "stock_id"

    iget-object v3, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    :cond_3
    const-string/jumbo v0, "trackingdata"

    const-string/jumbo v3, "adobestock"

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 531
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_4
    const-string/jumbo v0, "Standard"

    goto :goto_1

    .line 536
    :cond_5
    iget-object v1, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p2, :cond_6

    const-string/jumbo v5, "rendition"

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 540
    if-nez v0, :cond_7

    .line 541
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_6
    const-string/jumbo v5, "primary"

    goto :goto_2

    .line 543
    :cond_7
    invoke-static {v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->setWidthHeightAndLengthForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;)V

    .line 544
    const-string/jumbo v1, "trackingdata"

    const-string/jumbo v2, "adobestock"

    invoke-virtual {v0, v9, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 545
    const/4 v0, 0x0

    goto :goto_0

    .line 549
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v1, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 551
    iget-object v1, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v2, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    .line 552
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v0, :cond_a

    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x0

    const-string/jumbo v5, "rendition"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    .line 551
    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 554
    if-nez v0, :cond_b

    .line 555
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 552
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 557
    :cond_b
    invoke-static {v0, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->setWidthHeightAndLengthForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 562
    :catch_1
    move-exception v0

    .line 563
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static deleteElement(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 400
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 404
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 405
    if-nez v1, :cond_2

    .line 406
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "library element not found"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBrushFilePathForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z
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

    .line 245
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 261
    :goto_0
    return v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v0, p5, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    goto :goto_0

    .line 255
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

    .line 256
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual {v0, p5, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 261
    goto :goto_0
.end method

.method public static getCharacterStyleDataForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 284
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const-string/jumbo v1, "application/vnd.adobe.characterstyle+json"

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getFirstRepresentationOfType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v0, "data"

    const-string/jumbo v2, "characterstyle"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static getColorDataForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 305
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-object v1

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v2

    .line 310
    const-string/jumbo v3, "application/vnd.adobe.color+json"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "data"

    const-string/jumbo v1, "color"

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 310
    goto :goto_1
.end method

.method public static getColorThemeDataForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 317
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :cond_1
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 321
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getPrimaryRepresentationForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.colortheme+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 326
    const-string/jumbo v0, "data"

    const-string/jumbo v2, "colortheme"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static getDimsForImgElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    .line 335
    :cond_1
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 337
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getPrimaryRepresentationForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v3

    .line 340
    if-nez v3, :cond_2

    move v2, v0

    .line 341
    :goto_1
    if-nez v3, :cond_3

    .line 343
    :goto_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    move-object v0, v1

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v1

    move v2, v1

    goto :goto_1

    .line 341
    :cond_3
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v0

    goto :goto_2
.end method

.method public static getDimsofRenditionForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-eqz v1, :cond_0

    .line 269
    const-string/jumbo v1, "rendition"

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getFirstRepresentationOfType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 273
    :cond_0
    return-object v0
.end method

.method public static getIsLicensedForStockElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;)Z
    .locals 3

    .prologue
    .line 470
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_0

    .line 473
    const-string/jumbo v1, "trackingdata"

    const-string/jumbo v2, "adobestock"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 474
    if-eqz v0, :cond_0

    .line 475
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "purchased"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLicensedData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<[B>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x190

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 874
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 875
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 876
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 881
    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v0, "%s&size=%d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 892
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 893
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal$1;

    invoke-direct {v3, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal$1;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_1
    return-void

    .line 884
    :cond_0
    const-string/jumbo v0, "%s?size=%d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getModifiedDate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)J
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNameOrIdForDisplay(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStockAssetIdForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 451
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 456
    const-string/jumbo v1, "trackingdata"

    const-string/jumbo v2, "adobestock"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 457
    if-eqz v0, :cond_0

    .line 459
    const-string/jumbo v1, "content_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStockElementURL(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 842
    const/4 v1, 0x0

    .line 843
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 848
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 851
    const-string/jumbo v1, "library#linkurl"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 859
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static licenseAdobeStockElements(Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)I
    .locals 10

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 809
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v1

    .line 810
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 812
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 814
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElements()Ljava/util/ArrayList;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_5

    .line 816
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-object v1, v6

    .line 817
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getStockAssetIdForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;)Ljava/lang/String;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_4

    iget-object v2, p3, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->assetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v6

    .line 819
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->updateAdobeStockElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_3

    .line 821
    add-int/lit8 v7, v7, 0x1

    move v1, v7

    :goto_2
    move v7, v1

    .line 826
    goto :goto_1

    :cond_0
    move v0, v7

    :goto_3
    move v1, v0

    .line 828
    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    move v7, v0

    .line 831
    :cond_3
    return v7

    :cond_4
    move v1, v7

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public static renameElement(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 381
    if-nez p0, :cond_1

    move v3, v1

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    or-int/2addr v1, v3

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v1, :cond_3

    .line 396
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 381
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 384
    :cond_3
    check-cast p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 386
    invoke-virtual {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    move-result-object v1

    .line 387
    :goto_3
    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->setName(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->updateElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-object v0, v1

    .line 396
    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 386
    goto :goto_3
.end method

.method public static renameLibrary(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 419
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    .line 421
    :cond_1
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 423
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->setName(Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setWidthHeightAndLengthForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;)V
    .locals 2

    .prologue
    .line 429
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->width:I

    if-lez v0, :cond_0

    .line 430
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->width:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setWidth(I)V

    .line 432
    :cond_0
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->height:I

    if-lez v0, :cond_1

    .line 433
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->height:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setHeight(I)V

    .line 435
    :cond_1
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentLength:I

    if-lez v0, :cond_2

    .line 436
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentLength:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setContentLength(J)V

    .line 438
    :cond_2
    return-void
.end method

.method public static updateAdobeStockElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 672
    if-nez p0, :cond_1

    .line 673
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "element must not be null"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 786
    :cond_0
    :goto_0
    return-object p0

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.adobe.element.video+dcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 679
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "element must be of type AdobeDesignLibraryImageElementType or AdobeDesignLibraryVideoElementType"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 680
    goto :goto_0

    .line 683
    :cond_3
    if-nez p2, :cond_4

    .line 685
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "licensedAsset must not be null"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 686
    goto :goto_0

    .line 689
    :cond_4
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 691
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "licensedAsset url must be specified and cannot be a file url"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 692
    goto :goto_0

    .line 694
    :cond_6
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 696
    :cond_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "licensedAsset content type must be specified"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 697
    goto :goto_0

    .line 701
    :cond_8
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 702
    const-string/jumbo v0, "trackingdata"

    const-string/jumbo v2, "adobestock"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 704
    if-eqz v0, :cond_9

    const-string/jumbo v2, "content_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "content_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->assetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 705
    :cond_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDesignLibraryUtils:updateAdobeStockElement"

    const-string/jumbo v2, "stockData asset id must match the existing element stock asset id"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 706
    goto/16 :goto_0

    .line 709
    :cond_a
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "purchased"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-nez v0, :cond_c

    .line 722
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 725
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 726
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 781
    :catch_0
    move-exception v0

    .line 782
    :goto_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v9

    .line 783
    goto/16 :goto_0

    :cond_b
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 729
    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->addStockRepresentationsToLibrary(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-object p0, v9

    .line 732
    goto/16 :goto_0

    .line 740
    :cond_c
    const-string/jumbo v0, "rendition"

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setRelationship(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->clearOrder()V

    .line 745
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 748
    if-eq v0, v1, :cond_d

    .line 750
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->clearOrder()V

    goto :goto_3

    .line 781
    :catch_1
    move-exception v0

    goto :goto_2

    .line 755
    :cond_e
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;->sourceURL:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string/jumbo v5, "primary"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v1

    .line 757
    if-nez v1, :cond_f

    .line 758
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-object p0, v9

    .line 759
    goto/16 :goto_0

    .line 761
    :cond_f
    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->setWidthHeightAndLengthForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryRepresentationSource;)V

    .line 764
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 765
    const-string/jumbo v0, "content_id"

    iget-object v3, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->assetId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string/jumbo v0, "state"

    const-string/jumbo v3, "purchased"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    const-string/jumbo v3, "license"

    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->licenseType:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->licenseType:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 769
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->query:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 770
    const-string/jumbo v0, "query"

    iget-object v3, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->query:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    :cond_10
    iget-object v0, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 773
    const-string/jumbo v0, "stock_id"

    iget-object v3, p5, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeDesignLibraryStockData;->stockId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    :cond_11
    const-string/jumbo v0, "trackingdata"

    const-string/jumbo v3, "adobestock"

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-object p0, v9

    .line 778
    goto/16 :goto_0

    .line 768
    :cond_12
    const-string/jumbo v0, "Standard"
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4
.end method

.method public static updateColorTheme(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 347
    if-nez p0, :cond_1

    move v4, v0

    :goto_0
    if-nez p1, :cond_2

    move v3, v0

    :goto_1
    or-int/2addr v3, v4

    if-nez p2, :cond_3

    :goto_2
    or-int/2addr v0, v3

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    if-nez v0, :cond_4

    :cond_0
    move-object v0, v1

    .line 377
    :goto_3
    return-object v0

    :cond_1
    move v4, v2

    .line 347
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move-object v0, p3

    .line 350
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 351
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->beginChanges()V

    .line 352
    invoke-virtual {p3, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    move-result-object v2

    .line 353
    :goto_4
    if-nez v2, :cond_6

    move-object v0, v1

    .line 354
    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 352
    goto :goto_4

    .line 356
    :cond_6
    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->setName(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->updateElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 359
    const-string/jumbo v3, "application/vnd.adobe.colortheme+json"

    invoke-virtual {p3, v3, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFirstRepresentationOfType(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "application/vnd.adobe.colortheme+json"

    invoke-virtual {p3, v3, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFirstRepresentationOfType(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;

    move-result-object v3

    .line 360
    :goto_5
    if-eqz v3, :cond_7

    .line 361
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "colortheme"

    invoke-virtual {v3, p0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    :cond_7
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->updateRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 369
    :goto_6
    if-nez v3, :cond_9

    .line 370
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Representation couldn\'t be updated"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->discardChanges()Z

    move-object v0, v1

    .line 372
    goto :goto_3

    :cond_8
    move-object v3, v1

    .line 359
    goto :goto_5

    .line 366
    :catch_0
    move-exception v3

    move-object v3, v1

    goto :goto_6

    .line 375
    :cond_9
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->endChanges()Z

    move-object v0, v2

    .line 377
    goto :goto_3
.end method
