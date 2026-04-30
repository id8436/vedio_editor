.class public Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;
.super Lcom/behance/sdk/exception/BehanceSDKException;
.source "BehanceSDKInvalidImagesException.java"


# static fields
.field private static final serialVersionUID:J = 0x16edea83887c68f0L


# instance fields
.field private invalidImagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;->setInvalidImagesList(Ljava/util/List;)V

    .line 21
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
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;->invalidImagesList:Ljava/util/List;

    return-object v0
.end method

.method public setInvalidImagesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;->invalidImagesList:Ljava/util/List;

    .line 25
    return-void
.end method
