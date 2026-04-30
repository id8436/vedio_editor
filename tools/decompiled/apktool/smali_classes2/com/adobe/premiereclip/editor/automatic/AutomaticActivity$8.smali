.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1089
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2102(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Z)Z

    .line 1090
    return-void
.end method
