.class Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$1;
.super Ljava/lang/Object;
.source "GroupingManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;)I
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    check-cast p2, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$1;->compare(Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;)I

    move-result v0

    return v0
.end method
