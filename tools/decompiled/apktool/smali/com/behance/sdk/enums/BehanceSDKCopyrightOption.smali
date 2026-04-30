.class public final enum Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
.super Ljava/lang/Enum;
.source "BehanceSDKCopyrightOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY_NC:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY_NC_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum BY_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field public static final enum NO_USE:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY"

    const-string/jumbo v2, "by"

    invoke-direct {v0, v1, v4, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 36
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY_SA"

    const-string/jumbo v2, "by-sa"

    invoke-direct {v0, v1, v5, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 37
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY_ND"

    const-string/jumbo v2, "by-nd"

    invoke-direct {v0, v1, v6, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 38
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY_NC"

    const-string/jumbo v2, "by-nc"

    invoke-direct {v0, v1, v7, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 39
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY_NC_SA"

    const-string/jumbo v2, "by-nc-sa"

    invoke-direct {v0, v1, v8, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 40
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "BY_NC_ND"

    const/4 v2, 0x5

    const-string/jumbo v3, "by-nc-nd"

    invoke-direct {v0, v1, v2, v3}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 41
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    const-string/jumbo v1, "NO_USE"

    const/4 v2, 0x6

    const-string/jumbo v3, "no-use"

    invoke-direct {v0, v1, v2, v3}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->NO_USE:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v1, v0, v7

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->NO_USE:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getAllCopyrightOptions(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v3

    .line 122
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 123
    invoke-virtual {v5, p0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    :cond_1
    return-object v2
.end method

.method public static getCopyrightOptionFromValue(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 5

    .prologue
    .line 95
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v2

    .line 96
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 97
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    :goto_1
    return-object v0

    .line 96
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCopyrightOptions(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 112
    invoke-virtual {v4, p1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-object v2
.end method

.method public static getDefaultValue()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method


# virtual methods
.method public getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, -0x1

    .line 81
    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "no-use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_no_license_header:I

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by-sa"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by-nc"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by-nd"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by-nc-sa"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v2, "by-nc-nd"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :cond_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_creative_commons_header:I

    goto :goto_0
.end method

.method public getDescription()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "no-use"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_no_license:I

    .line 68
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by:I

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by-sa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by_sa:I

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by-nd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by_nd:I

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by-nc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by_nc:I

    goto :goto_0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by-nc-sa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by_nc_sa:I

    goto :goto_0

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    const-string/jumbo v1, "by-nc-nd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    sget v0, Lcom/behance/sdk/R$string;->bsdk_copyright_cc_by_nc_nd:I

    goto :goto_0

    .line 68
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->value:Ljava/lang/String;

    return-object v0
.end method
