.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;
.source "LooksFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 27
    const-string/jumbo v2, "Lumetri"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V

    .line 28
    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v7, "path"

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    const-string/jumbo v1, "path"

    const-string/jumbo v2, "path"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
