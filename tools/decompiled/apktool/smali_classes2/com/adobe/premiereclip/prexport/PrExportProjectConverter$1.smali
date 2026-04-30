.class Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$1;
.super Ljava/lang/Object;
.source "PrExportProjectConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 591
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$1;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
