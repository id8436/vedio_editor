.class public Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;
.super Ljava/lang/Object;
.source "TourViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isFirstLaunch:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;Z)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-boolean p2, p0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;->isFirstLaunch:Z

    .line 642
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;->isFirstLaunch:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$500(Lcom/adobe/premiereclip/TourViewActivity;)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$100(Lcom/adobe/premiereclip/TourViewActivity;)V

    goto :goto_0
.end method
