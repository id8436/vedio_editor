.class public final Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"


# static fields
.field public static final PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

.field public static Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

.field public final timeTaken:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 418
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-direct {v0, v1, v1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;-><init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v1/DbxEntry$File$Location;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->timeTaken:Ljava/util/Date;

    .line 390
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    .line 391
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 423
    const-string/jumbo v0, "timeTaken"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    .line 424
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 425
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    if-ne p0, v2, :cond_3

    :cond_0
    if-ne p1, p0, :cond_2

    :goto_0
    move v1, v0

    .line 439
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->timeTaken:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->timeTaken:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-static {v2, v3}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 439
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 430
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->equals(Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;)Z

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
    .line 445
    .line 446
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->timeTaken:Ljava/util/Date;

    invoke-static {v0}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 447
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->location:Lcom/dropbox/core/v1/DbxEntry$File$Location;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    return v0
.end method
