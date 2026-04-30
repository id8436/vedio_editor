.class public Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKAddProjectModuleTaskParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private imageFile:Ljava/io/File;

.field private projectID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/io/File;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->projectID:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->imageFile:Ljava/io/File;

    .line 17
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->projectID:Ljava/lang/String;

    .line 25
    return-void
.end method
