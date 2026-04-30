.class Lcom/learnncode/mediachooser/activity/a;
.super Ljava/lang/Object;
.source "BucketHomeFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/learnncode/mediachooser/activity/a;->a:Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/a;->a:Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->a(Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/a;->a:Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->closeAndGoBack()V

    .line 113
    :cond_0
    return-void
.end method
