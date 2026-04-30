.class Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$1;
.super Ljava/lang/Object;
.source "ProjectTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ProjectTypeActivity;->onBackPressed()V

    .line 80
    return-void
.end method
