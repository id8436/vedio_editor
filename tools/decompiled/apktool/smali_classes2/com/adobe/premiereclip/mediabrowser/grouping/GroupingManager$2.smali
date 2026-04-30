.class Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$2;
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
        "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)I
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    check-cast p2, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$2;->compare(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)I

    move-result v0

    return v0
.end method
