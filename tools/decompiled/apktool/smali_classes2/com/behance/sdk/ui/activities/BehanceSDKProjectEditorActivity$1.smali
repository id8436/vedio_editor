.class Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorActivity.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity$1;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetConfigFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onGetConfigSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
