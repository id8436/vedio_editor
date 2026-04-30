.class public final Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
.super Ljava/lang/Object;
.source "InvalidPropertyGroupError.java"


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 2

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTagAndPath(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 2

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    .line 111
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 141
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    .line 142
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    .line 143
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    .line 128
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 331
    if-ne p1, p0, :cond_0

    .line 362
    :goto_0
    :pswitch_0
    return v1

    .line 334
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    if-eqz v2, :cond_7

    .line 338
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 339
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 340
    goto :goto_0

    .line 342
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$InvalidPropertyGroupError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 358
    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v1, v0

    .line 362
    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 326
    return v0
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyFieldTooLarge()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedContent()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateNotFound()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedFolder()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->_tag:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
