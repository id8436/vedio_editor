.class Lcom/adobe/premiereclip/TourViewActivity$6;
.super Ljava/lang/Object;
.source "TourViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$6;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptSignUp()V

    .line 366
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$6;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->signup(Landroid/app/Activity;)V

    .line 367
    return-void
.end method
