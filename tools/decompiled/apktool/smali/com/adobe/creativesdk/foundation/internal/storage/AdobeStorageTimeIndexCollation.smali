.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;
.source "AdobeStorageTimeIndexCollation.java"


# instance fields
.field private sectionIndexTitlesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionTitlesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;-><init>()V

    return-void
.end method

.method private ConvertDateToFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calcDifferenceInDaysFromToday(Ljava/util/Date;Ljava/util/Calendar;)J
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 261
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 262
    sub-long/2addr v0, v2

    .line 263
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 266
    return-wide v0
.end method

.method private createSectionTitlesAndAssignSectionsToData(Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 106
    const/4 v7, -0x1

    .line 107
    const/4 v6, -0x1

    .line 108
    const/4 v5, -0x1

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 111
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    .line 112
    const/4 v2, 0x5

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v2, 0x0

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    .line 123
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->modificationDate:Ljava/util/Date;

    move-object/from16 v20, v0

    .line 127
    if-nez v20, :cond_0

    .line 128
    sget v9, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UNKNOWN_DATE:I

    invoke-static {v9}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitlesArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionIndexTitlesArray:Ljava/util/ArrayList;

    const-string/jumbo v10, "U"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionIndexTitlesArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iput v9, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->sectionNumber:I

    goto :goto_0

    .line 138
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 139
    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 140
    const/4 v9, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v10, v9, 0x1

    .line 141
    const/4 v9, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v12, 0x0

    .line 146
    if-ne v11, v8, :cond_1

    if-ne v10, v7, :cond_1

    if-eq v9, v6, :cond_4

    .line 148
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->calcDifferenceInDaysFromToday(Ljava/util/Date;Ljava/util/Calendar;)J

    move-result-wide v22

    .line 150
    if-ne v11, v15, :cond_5

    move/from16 v0, v16

    if-ne v10, v0, :cond_5

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 152
    const-string/jumbo v6, "TD"

    .line 153
    sget v7, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_TODAY:I

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    :goto_1
    if-eqz v7, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitlesArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_2
    if-eqz v6, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionIndexTitlesArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v6, v9

    move v7, v10

    move v8, v11

    .line 211
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitlesArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iput v9, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->sectionNumber:I

    goto/16 :goto_0

    .line 154
    :cond_5
    const-wide/16 v24, 0x6

    cmp-long v6, v22, v24

    if-gtz v6, :cond_6

    .line 156
    if-nez v5, :cond_b

    .line 157
    const/4 v7, 0x1

    .line 158
    const-string/jumbo v5, "TW"

    .line 159
    sget v6, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_THIS_WEEK:I

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v5

    move v5, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto :goto_1

    .line 161
    :cond_6
    const-wide/16 v24, 0xd

    cmp-long v6, v22, v24

    if-gtz v6, :cond_7

    .line 163
    if-nez v4, :cond_b

    .line 164
    const/4 v7, 0x1

    .line 165
    const-string/jumbo v4, "LW"

    .line 166
    sget v6, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_LAST_WEEK:I

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v4

    move v4, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto :goto_1

    .line 168
    :cond_7
    if-ne v11, v15, :cond_8

    move/from16 v0, v16

    if-ne v10, v0, :cond_8

    .line 170
    if-nez v3, :cond_b

    .line 171
    const/4 v7, 0x1

    .line 172
    const-string/jumbo v3, "TM"

    .line 173
    sget v6, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_THIS_MONTH:I

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v3

    move v3, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto :goto_1

    .line 175
    :cond_8
    if-ne v11, v15, :cond_9

    if-eq v10, v7, :cond_9

    .line 178
    const-string/jumbo v6, "MM/yy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->ConvertDateToFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 181
    sget v7, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_DATE:I

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const/16 v20, 0x24

    move/from16 v0, v20

    invoke-static {v8, v12, v13, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 185
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 187
    :cond_9
    if-eq v11, v8, :cond_b

    .line 189
    const-string/jumbo v6, "yy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->ConvertDateToFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 191
    sget v7, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_UPDATED_DATE:I

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    const-string/jumbo v8, "yyyy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v8, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->ConvertDateToFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 194
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 214
    :cond_a
    return-void

    :cond_b
    move-object v6, v12

    move-object v7, v13

    goto/16 :goto_1
.end method


# virtual methods
.method public createSectionDataFromMaster(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionIndexTitlesArray:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitlesArray:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return v2

    :cond_0
    move v1, v2

    .line 55
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 58
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;-><init>()V

    .line 59
    iput v1, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->originalIndex:I

    .line 60
    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->item:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 61
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    iput-object v5, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->modificationDate:Ljava/util/Date;

    .line 64
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->modificationDate:Ljava/util/Date;

    .line 69
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 76
    :cond_2
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->createSectionTitlesAndAssignSectionsToData(Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :goto_2
    if-ge v2, v0, :cond_3

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    .line 90
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->sectionNumber:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 95
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 96
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 99
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public sectionIndexTitles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionIndexTitlesArray:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-object v0
.end method

.method public sectionTitles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitlesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public titleForHeaderInSection(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->numberOfSections()I

    move-result v0

    if-gtz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 225
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_CAPTION_COLLATION_FOLDERS_HEADER:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;->sectionTitles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
