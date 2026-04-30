.class public Lcom/dropbox/core/v1/DbxEntry$File$Location;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"


# static fields
.field public static Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File$Location;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final latitude:D

.field public final longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 556
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->latitude:D

    .line 557
    iput-wide p3, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->longitude:D

    .line 558
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 4

    .prologue
    .line 584
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(D)Lcom/dropbox/core/util/DumpWriter;

    .line 585
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(D)Lcom/dropbox/core/util/DumpWriter;

    .line 586
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$File$Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 606
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->latitude:D

    iget-wide v4, p1, Lcom/dropbox/core/v1/DbxEntry$File$Location;->latitude:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->longitude:D

    iget-wide v4, p1, Lcom/dropbox/core/v1/DbxEntry$File$Location;->longitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 608
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 601
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$Location;->equals(Lcom/dropbox/core/v1/DbxEntry$File$Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 590
    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 591
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$Location;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 594
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 595
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 596
    return v0
.end method
