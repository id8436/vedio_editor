.class public Lcom/dropbox/core/v1/DbxAccountInfo;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxAccountInfo.java"


# static fields
.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_country:I = 0x2

.field private static final FM_display_name:I = 0x1

.field private static final FM_email:I = 0x6

.field private static final FM_email_verified:I = 0x7

.field private static final FM_name_details:I = 0x5

.field private static final FM_quota_info:I = 0x4

.field private static final FM_referral_link:I = 0x3

.field private static final FM_uid:I

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final country:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final emailVerified:Z

.field public final nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

.field public final quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

.field public final referralLink:Ljava/lang/String;

.field public final userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 283
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 284
    const-string/jumbo v1, "uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 285
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 286
    const-string/jumbo v1, "country"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 287
    const-string/jumbo v1, "referral_link"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 288
    const-string/jumbo v1, "quota_info"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 289
    const-string/jumbo v1, "name_details"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v1, "email"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v1, "email_verified"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 294
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$Quota;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;Z)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->userId:J

    .line 30
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->displayName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->country:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->referralLink:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    .line 34
    iput-object p7, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->email:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    .line 36
    iput-boolean p9, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->emailVerified:Z

    .line 37
    return-void
.end method

.method static synthetic access$200()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 4

    .prologue
    .line 42
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->userId:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 43
    const-string/jumbo v0, "displayName"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 44
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 45
    const-string/jumbo v0, "referralLink"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->referralLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 46
    const-string/jumbo v0, "quota"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 47
    const-string/jumbo v0, "nameDetails"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 48
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 49
    const-string/jumbo v0, "emailVerified"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->emailVerified:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    .line 50
    return-void
.end method
