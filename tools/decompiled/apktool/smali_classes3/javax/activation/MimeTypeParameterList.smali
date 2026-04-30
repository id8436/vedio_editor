.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 66
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static isTokenChar(C)Z
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string/jumbo v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 281
    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 285
    :goto_0
    if-ge v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 285
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 286
    goto :goto_1

    .line 289
    :cond_1
    if-eqz v0, :cond_5

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 294
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    :goto_2
    if-ge v1, v3, :cond_4

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 299
    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_3

    .line 300
    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 309
    :cond_5
    return-object p0
.end method

.method private static skipWhiteSpace(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return p1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 319
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    move v2, v1

    move v0, v1

    .line 323
    :goto_0
    if-ge v2, v3, :cond_2

    .line 324
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 325
    if-nez v0, :cond_0

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_0

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_0
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 330
    goto :goto_1

    .line 331
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 75
    if-nez p1, :cond_1

    .line 177
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 79
    if-lez v3, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    .line 85
    :goto_0
    if-ge v0, v3, :cond_e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_e

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 97
    invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 100
    if-ge v1, v3, :cond_0

    move v0, v1

    .line 105
    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    .line 113
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_4

    .line 114
    :cond_3
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string/jumbo v1, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 120
    invoke-static {p1, v0}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    .line 122
    if-lt v0, v3, :cond_5

    .line 123
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Couldn\'t find a value for parameter named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 128
    if-ne v1, v6, :cond_b

    .line 130
    add-int/lit8 v2, v0, 0x1

    .line 131
    if-lt v2, v3, :cond_6

    .line 132
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string/jumbo v1, "Encountered unterminated quoted parameter value."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v2

    .line 138
    :goto_2
    if-ge v0, v3, :cond_7

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 140
    if-ne v1, v6, :cond_8

    .line 150
    :cond_7
    if-eq v1, v6, :cond_a

    .line 151
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string/jumbo v1, "Encountered unterminated quoted parameter value."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_8
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_9

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 149
    goto :goto_2

    .line 154
    :cond_a
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    add-int/lit8 v0, v0, 0x1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 171
    :goto_3
    iget-object v2, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 157
    :cond_b
    invoke-static {v1}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    .line 161
    :goto_4
    if-ge v1, v3, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 163
    :cond_c
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 166
    :cond_d
    new-instance v1, Ljavax/activation/MimeTypeParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unexpected character encountered at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_e
    if-ge v0, v3, :cond_0

    .line 174
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string/jumbo v1, "More characters encountered in input than expected."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 245
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 246
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
