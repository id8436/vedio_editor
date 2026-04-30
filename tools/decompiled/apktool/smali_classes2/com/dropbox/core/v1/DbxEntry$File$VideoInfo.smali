.class public final Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"


# static fields
.field public static final PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

.field public static Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final duration:Ljava/lang/Long;

.field public final location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

.field public final timeTaken:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 510
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-direct {v0, v1, v1, v1}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->timeTaken:Ljava/util/Date;

    .line 475
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    .line 476
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->duration:Ljava/lang/Long;

    .line 477
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 515
    const-string/jumbo v0, "timeTaken"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    .line 516
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 517
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->duration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/Long;)Lcom/dropbox/core/util/DumpWriter;

    .line 518
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    if-ne p0, v2, :cond_3

    :cond_0
    if-ne p1, p0, :cond_2

    :goto_0
    move v1, v0

    .line 533
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 529
    goto :goto_0

    .line 530
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->timeTaken:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->timeTaken:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-static {v2, v3}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->duration:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 533
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 523
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->equals(Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)Z

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
    .locals 2

    .prologue
    .line 539
    .line 540
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->timeTaken:Ljava/util/Date;

    invoke-static {v0}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 541
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 542
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->duration:Ljava/lang/Long;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    return v0
.end method
