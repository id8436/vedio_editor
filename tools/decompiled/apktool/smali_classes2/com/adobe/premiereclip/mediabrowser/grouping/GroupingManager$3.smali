.class Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$3;
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
        "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/Bucket;)I
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    check-cast p2, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$3;->compare(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/Bucket;)I

    move-result v0

    return v0
.end method
