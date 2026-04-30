.class public Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
.super Ljava/lang/Object;
.source "CalendarQuery.java"


# static fields
.field public static final EXT_PROP_QUERY_PATTERN:Ljava/util/regex/Pattern;

.field public static final MAX_EXTENDED_PROPERTY_NAME_LENGTH:I = 0x2c

.field public static final MAX_EXTENDED_PROPERTY_VALUE_LENGTH:I = 0x400

.field public static final PROPERTY_NAME_REGEX:Ljava/lang/String; = "[^:=]+"

.field public static final PROPERTY_VALUE_REGEX:Ljava/lang/String; = "\\\"(?:[^\\\"\\\\]|(?:\\\\\\\\)|(?:\\\\\\\"))*\\\"|[^\\]]*"

.field public static final SINGLE_EXT_PROP_QUERY_REGEX:Ljava/lang/String; = "\\[([^:=]+):(\\\"(?:[^\\\"\\\\]|(?:\\\\\\\\)|(?:\\\\\\\"))*\\\"|[^\\]]*)\\]"


# instance fields
.field private expr:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "\\[([^:=]+):(\\\"(?:[^\\\"\\\\]|(?:\\\\\\\\)|(?:\\\\\\\"))*\\\"|[^\\]]*)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->EXT_PROP_QUERY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Property name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Property value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    if-le v0, v1, :cond_2

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Property name length in characters must not be more than 44"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_3

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Property value length in characters must not be more than 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_3
    iput-object p1, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private appendExpr(Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 197
    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    const-string/jumbo v2, "\\\\"

    const-string/jumbo v3, "\\\\\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\\""

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static arrayFromExtendedPropertyQueryString(Ljava/lang/String;)[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 220
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 222
    const/4 v0, 0x0

    .line 223
    sget-object v1, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->EXT_PROP_QUERY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 224
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 225
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid extended property query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 230
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "\\\\(.)"

    const-string/jumbo v6, "$1"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_2
    new-instance v5, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    invoke-direct {v5, v4, v1}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {}, Lcom/google/gdata/client/calendar/CalendarQuery;->access$000()[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    return-object v0
.end method

.method private static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    instance-of v1, p1, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    check-cast p1, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    .line 182
    iget-object v1, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->appendExpr(Ljava/lang/StringBuilder;)V

    .line 172
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
