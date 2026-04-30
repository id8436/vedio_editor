.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;
.source "AudioLevelsFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 29
    const-string/jumbo v1, "Audio Levels"

    const-string/jumbo v2, "audiolevels"

    const-string/jumbo v3, "audiolevels"

    const-string/jumbo v4, "audiolevels"

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V

    .line 30
    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v7, "Level"

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    const-string/jumbo v1, "Level"

    const-string/jumbo v2, "level"

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "3.98109"

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public setParamValue(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 39
    const-string/jumbo v1, "Level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x3fffd70a3d70a3d7L    # 1.99

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 40
    const v0, 0x3ffeb852    # 1.99f

    .line 42
    :cond_0
    invoke-super {p0, p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->setParamValue(Ljava/lang/String;F)V

    .line 43
    return-void
.end method
