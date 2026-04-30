.class public Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;
.super Landroid/os/Binder;
.source "BehanceSDKProjectEditorService.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    return-object v0
.end method
