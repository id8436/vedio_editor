.class public final Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
.super Ljava/lang/Object;
.source "TemplateFilter.java"


# static fields
.field public static final FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

.field private filterSomeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    return-object v0
.end method

.method public static filterSome(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 165
    if-nez p0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List has fewer than 1 items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    if-nez v0, :cond_3

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_4

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    const-string/jumbo v2, "(/|ptid:).*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->withTagAndFilterSome(Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;-><init>()V

    .line 87
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    .line 88
    return-object v0
.end method

.method private withTagAndFilterSome(Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;-><init>()V

    .line 104
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    .line 105
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    .line 106
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 225
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-eqz p1, :cond_0

    .line 231
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    if-eqz v2, :cond_0

    .line 232
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 233
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    if-ne v2, v3, :cond_0

    .line 236
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$TemplateFilter$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 242
    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFilterSomeValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    if-eq v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FILTER_SOME, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSomeValue:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 220
    return v0
.end method

.method public isFilterNone()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterSome()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
