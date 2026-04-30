.class public Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;
.super Ljava/lang/Object;
.source "VideoSettings.java"


# instance fields
.field public alphaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

.field public anamorphic:Z

.field public aspectRatio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

.field public fieldDominance:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

.field public height:I

.field public ntsc:Z

.field public timebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->timebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    .line 36
    iput-boolean v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->ntsc:Z

    .line 37
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->black:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->alphaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    .line 38
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->square:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->aspectRatio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    .line 39
    iput-boolean v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->anamorphic:Z

    .line 40
    const/16 v0, 0x780

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->width:I

    .line 41
    const/16 v0, 0x438

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->height:I

    .line 42
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->none:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->fieldDominance:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    .line 43
    return-void
.end method
