.class public final enum Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
.super Ljava/lang/Enum;
.source "BehanceSDKGetProjectsAsyncTaskParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum APPRECIATIONS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum COMMENTS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum FEATURED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum PUBLISHED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum RELEVANCE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

.field public static final enum VIEWS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;


# instance fields
.field actualValue:Ljava/lang/String;

.field private displayNameResourceId:I

.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v1, "FEATURED_DATE"

    const-string/jumbo v3, "featured_date"

    sget v4, Lcom/behance/sdk/R$string;->bsdk_sort_option_featured:I

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->FEATURED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    new-instance v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v4, "APPRECIATIONS"

    const-string/jumbo v6, "appreciations"

    sget v7, Lcom/behance/sdk/R$string;->bsdk_sort_option_most_appreciated:I

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->APPRECIATIONS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    new-instance v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v4, "VIEWS"

    const-string/jumbo v6, "views"

    sget v7, Lcom/behance/sdk/R$string;->bsdk_sort_option_most_viewed:I

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->VIEWS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    .line 154
    new-instance v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v4, "COMMENTS"

    const-string/jumbo v6, "comments"

    sget v7, Lcom/behance/sdk/R$string;->bsdk_sort_option_most_discussed:I

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->COMMENTS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    new-instance v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v4, "PUBLISHED_DATE"

    const-string/jumbo v6, "published_date"

    sget v7, Lcom/behance/sdk/R$string;->bsdk_sort_option_most_recent:I

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->PUBLISHED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    .line 155
    new-instance v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    const-string/jumbo v4, "RELEVANCE"

    const/4 v5, 0x5

    const-string/jumbo v6, "relevance"

    sget v7, Lcom/behance/sdk/R$string;->bsdk_sort_option_most_relevant:I

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->RELEVANCE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->FEATURED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->APPRECIATIONS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v1, v0, v9

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->VIEWS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v1, v0, v10

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->COMMENTS:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v1, v0, v11

    sget-object v1, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->PUBLISHED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->RELEVANCE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->$VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->actualValue:Ljava/lang/String;

    .line 163
    iput p4, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->displayNameResourceId:I

    .line 164
    iput p5, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->index:I

    .line 165
    return-void
.end method

.method public static fromIndex(I)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
    .locals 5

    .prologue
    .line 184
    invoke-static {}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->values()[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 185
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 189
    :goto_1
    return-object v0

    .line 184
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->FEATURED_DATE:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    goto :goto_1
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
    .locals 5

    .prologue
    .line 168
    invoke-static {}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->values()[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 169
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :goto_1
    return-object v0

    .line 168
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromName(Ljava/lang/String;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->fromName(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 180
    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->$VALUES:[Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    invoke-virtual {v0}, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;

    return-object v0
.end method


# virtual methods
.method public getDisplayNameResourceId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->displayNameResourceId:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams$ProjectsSortOption;->actualValue:Ljava/lang/String;

    return-object v0
.end method
