.class public final Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxAccountInfo.java"


# static fields
.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_normal:I = 0x1

.field private static final FM_quota:I = 0x0

.field private static final FM_shared:I = 0x2

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxAccountInfo$Quota;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final normal:J

.field public final shared:J

.field public final total:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 123
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 124
    const-string/jumbo v1, "quota"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v1, "normal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 126
    const-string/jumbo v1, "shared"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 128
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->total:J

    .line 61
    iput-wide p3, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->normal:J

    .line 62
    iput-wide p5, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->shared:J

    .line 63
    return-void
.end method

.method static synthetic access$000()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 4

    .prologue
    .line 68
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->total:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 69
    const-string/jumbo v0, "normal"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->normal:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 70
    const-string/jumbo v0, "shared"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->shared:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 71
    return-void
.end method
