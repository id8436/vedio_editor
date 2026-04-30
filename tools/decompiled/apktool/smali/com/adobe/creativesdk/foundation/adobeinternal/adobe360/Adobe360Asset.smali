.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
.super Ljava/lang/Object;
.source "Adobe360Asset.java"


# instance fields
.field private _data:Ljava/lang/Object;

.field private _descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_data:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_data:Ljava/lang/Object;

    .line 28
    invoke-static {p2, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->createAssetDescriptorWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    .line 29
    return-void
.end method

.method public static createAssetWithData(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;-><init>(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)V

    return-object v0
.end method

.method public static createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 2

    .prologue
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->createAssetDescriptorWithType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;-><init>(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)V

    return-object v1
.end method

.method public static createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_data:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_data:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public setDescriptor(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->_descriptor:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    .line 107
    return-void
.end method
