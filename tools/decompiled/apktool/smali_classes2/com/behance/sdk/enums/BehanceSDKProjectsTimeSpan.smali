.class public final enum Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectsTimeSpan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

.field public static final enum ALL:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

.field public static final enum MONTH:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

.field public static final enum TODAY:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

.field public static final enum WEEK:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;


# instance fields
.field private actualValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v2, "all"

    invoke-direct {v0, v1, v3, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->ALL:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    const-string/jumbo v1, "WEEK"

    const-string/jumbo v2, "week"

    invoke-direct {v0, v1, v4, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->WEEK:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    const-string/jumbo v1, "MONTH"

    const-string/jumbo v2, "month"

    invoke-direct {v0, v1, v5, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->MONTH:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    const-string/jumbo v1, "TODAY"

    const-string/jumbo v2, "today"

    invoke-direct {v0, v1, v6, v2}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->TODAY:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->ALL:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->WEEK:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->MONTH:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->TODAY:Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    aput-object v1, v0, v6

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->actualValue:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 5

    .prologue
    .line 13
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 14
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    :goto_1
    return-object v0

    .line 13
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromName(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 25
    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->actualValue:Ljava/lang/String;

    return-object v0
.end method
