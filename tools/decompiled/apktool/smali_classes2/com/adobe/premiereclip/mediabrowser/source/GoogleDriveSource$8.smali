.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$8;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$8;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;->access$000(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->decreaseMaximumProgress()V

    .line 266
    return-void
.end method
