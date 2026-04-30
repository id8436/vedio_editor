.class Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;
.super Ljava/lang/Object;
.source "BehanceSDKDrawerBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iput-object p2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->val$child:Landroid/view/View;

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;->val$state:I

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    .line 452
    return-void
.end method
