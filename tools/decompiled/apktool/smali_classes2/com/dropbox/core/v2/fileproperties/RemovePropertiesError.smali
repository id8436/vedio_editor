.class public final Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
.super Ljava/lang/Object;
.source "RemovePropertiesError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

.field private propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 2

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTagAndPath(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public static propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 2

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTagAndPropertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 2

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 95
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    .line 125
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 126
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    .line 127
    return-object v0
.end method

.method private withTagAndPropertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    .line 140
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 141
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    .line 142
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 111
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    .line 112
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    if-eqz p1, :cond_0

    .line 362
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    if-eqz v2, :cond_0

    .line 363
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    .line 364
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-ne v2, v3, :cond_0

    .line 367
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$RemovePropertiesError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 371
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 373
    goto :goto_0

    .line 375
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 377
    goto :goto_0

    .line 379
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public getPropertyGroupLookupValue()Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 350
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 351
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

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
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyGroupLookup()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

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
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

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
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

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
    .line 292
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
