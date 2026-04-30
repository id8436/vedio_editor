.class Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$9;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    check-cast v0, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    const-string/jumbo v1, "33"

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->onFailureImageLoad(Ljava/lang/String;)V

    .line 339
    return-void
.end method
