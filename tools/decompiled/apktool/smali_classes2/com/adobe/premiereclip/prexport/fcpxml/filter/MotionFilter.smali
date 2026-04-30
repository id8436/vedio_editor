.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;
.source "MotionFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 27
    const-string/jumbo v1, "Basic Motion"

    const-string/jumbo v2, "basic"

    const-string/jumbo v3, "motion"

    const-string/jumbo v4, "motion"

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V

    .line 29
    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v7, "Scale"

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    const-string/jumbo v1, "Scale"

    const-string/jumbo v2, "scale"

    const-string/jumbo v3, "100"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "1000"

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v7, "Rotation"

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    const-string/jumbo v1, "Rotation"

    const-string/jumbo v2, "rotation"

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "-8640"

    const-string/jumbo v5, "8640"

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v1, "Center"

    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;

    const-string/jumbo v3, "Center"

    const-string/jumbo v4, "center"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v1, "Anchor Point"

    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;

    const-string/jumbo v3, "Anchor Point"

    const-string/jumbo v4, "centerOffset"

    invoke-direct {v2, v3, v4, v8, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
