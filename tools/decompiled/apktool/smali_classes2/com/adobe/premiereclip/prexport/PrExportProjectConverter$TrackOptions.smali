.class Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;
.super Ljava/lang/Object;
.source "PrExportProjectConverter.java"


# instance fields
.field public crossDissolve:Z

.field public fadeIn:Z

.field public fadeOut:Z

.field public look:Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;ZZZ)V
    .locals 1

    .prologue
    .line 945
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->this$0:Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-boolean p2, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeIn:Z

    .line 947
    iput-boolean p3, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeOut:Z

    .line 948
    iput-boolean p4, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->crossDissolve:Z

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->look:Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    .line 950
    return-void
.end method


# virtual methods
.method public setLook(Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->look:Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    .line 954
    return-void
.end method
