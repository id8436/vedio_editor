.class Lcom/adobe/premiereclip/sharing/SharingOptions$7;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$7;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$7;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->access$700(Lcom/adobe/premiereclip/sharing/SharingOptions;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method
