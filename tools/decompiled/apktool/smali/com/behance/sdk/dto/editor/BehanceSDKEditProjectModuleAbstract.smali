.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;
.super Ljava/lang/Object;
.source "BehanceSDKEditProjectModuleAbstract.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private newModule:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->id:I

    return v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->UNKNOWN:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public isNewModule()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->newModule:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->id:I

    .line 26
    return-void
.end method

.method public setNewModule(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->newModule:Z

    .line 34
    return-void
.end method
