.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/OutputFileInfo;
.super Ljava/lang/Object;
.source "AdobeImageOperation.java"


# instance fields
.field path:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/OutputFileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/OutputFileInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/OutputFileInfo;->path:Ljava/lang/String;

    .line 1010
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/OutputFileInfo;->type:Ljava/lang/String;

    .line 1014
    return-void
.end method
