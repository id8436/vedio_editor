.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;
.super Ljava/lang/Object;
.source "AdobeAGCManifest.java"


# instance fields
.field private _contentType:Ljava/lang/String;

.field private _data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->_data:Lorg/json/JSONObject;

    .line 15
    const-string/jumbo v0, "application/vnd.adobe.graphicsComposite.master+json"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->_contentType:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCManifest;->_data:Lorg/json/JSONObject;

    return-object v0
.end method
