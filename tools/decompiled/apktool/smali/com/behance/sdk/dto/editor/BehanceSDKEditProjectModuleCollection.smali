.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.source "BehanceSDKEditProjectModuleCollection.java"


# instance fields
.field private collectionType:Ljava/lang/String;

.field private components:Lorg/json/JSONArray;

.field private fullBleed:Z

.field private moduleTypeString:Ljava/lang/String;

.field private sortType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->collectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->components:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->MEDIA_COLLECTION:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public getModuleTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->moduleTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->sortType:Ljava/lang/String;

    return-object v0
.end method

.method public isFullBleed()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->fullBleed:Z

    return v0
.end method

.method public setCollectionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->collectionType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setComponents(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->components:Lorg/json/JSONArray;

    .line 60
    return-void
.end method

.method public setFullBleed(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->fullBleed:Z

    .line 36
    return-void
.end method

.method public setModuleTypeString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->moduleTypeString:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSortType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->sortType:Ljava/lang/String;

    .line 44
    return-void
.end method
