.class Lcom/adobe/premiereclip/MainActivity$18$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$18;)V
    .locals 0

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1903
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2500(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1904
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1905
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1906
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$18$2;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v1, v1, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v2, 0x7f05002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1907
    return-void
.end method
