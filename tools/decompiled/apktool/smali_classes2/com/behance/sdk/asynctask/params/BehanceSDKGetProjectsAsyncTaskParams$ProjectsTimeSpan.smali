.class public final enum Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;
.super Ljava/lang/Enum;
.source "BehanceSDKGetProjectsAsyncTaskParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

.field public static final enum ALL:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

.field public static final enum MONTH:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

.field public static final enum TODAY:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

.field public static final enum WEEK:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;


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

    .line 121
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v2, "all"

    invoke-direct {v0, v1, v3, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->ALL:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    const-string/jumbo v1, "WEEK"

    const-string/jumbo v2, "week"

    invoke-direct {v0, v1, v4, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->WEEK:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    const-string/jumbo v1, "MONTH"

    const-string/jumbo v2, "month"

    invoke-direct {v0, v1, v5, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->MONTH:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    const-string/jumbo v1, "TODAY"

    const-string/jumbo v2, "today"

    invoke-direct {v0, v1, v6, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->TODAY:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->ALL:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->WEEK:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->MONTH:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->TODAY:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    aput-object v1, v0, v6

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->$VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-object p3, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->actualValue:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;
    .locals 5

    .prologue
    .line 130
    invoke-static {}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->values()[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 131
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    :goto_1
    return-object v0

    .line 130
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromName(Ljava/lang/String;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->fromName(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 142
    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->$VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    invoke-virtual {v0}, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsTimeSpan;->actualValue:Ljava/lang/String;

    return-object v0
.end method
