.class public Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;
.super Ljava/lang/Exception;
.source "AdobeBehancePublishInvalidImageException.java"


# instance fields
.field private exception:Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 34
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;->exception:Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p2, p0, Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;->exception:Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;

    .line 24
    return-void
.end method


# virtual methods
.method public getInvalidImagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;->exception:Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;

    invoke-virtual {v0}, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;->getInvalidImagesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
