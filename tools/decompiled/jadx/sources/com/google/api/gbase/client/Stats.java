package com.google.api.gbase.client;

import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "stats", nsAlias = GoogleBaseNamespaces.GM_ALIAS, nsUri = GoogleBaseNamespaces.GM_URI)
public class Stats implements Extension {
    private final Statistics impressions = new Statistics();
    private final Statistics clicks = new Statistics();
    private final Statistics pageViews = new Statistics();

    public Statistics getImpressions() {
        return this.impressions;
    }

    public Statistics getClicks() {
        return this.clicks;
    }

    public Statistics getPageViews() {
        return this.pageViews;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.impressions.getTotal() != 0 || this.clicks.getTotal() != 0 || this.pageViews.getTotal() != 0) {
            xmlWriter.startElement(GoogleBaseNamespaces.GM, "stats", null, null);
            this.impressions.generate(xmlWriter, "impressions");
            this.clicks.generate(xmlWriter, "clicks");
            this.pageViews.generate(xmlWriter, "page_views");
            xmlWriter.endElement();
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        this.impressions.clear();
        this.pageViews.clear();
        this.clicks.clear();
        return new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.Stats.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public XmlParser.ElementHandler getChildHandler(String str3, String str4, Attributes attributes2) throws ParseException, IOException {
                if (str4.equals("impressions")) {
                    return new StatsSubElementHandler(Stats.this.impressions, attributes2);
                }
                if (str4.equals("page_views")) {
                    return new StatsSubElementHandler(Stats.this.pageViews, attributes2);
                }
                if (str4.equals("clicks")) {
                    return new StatsSubElementHandler(Stats.this.clicks, attributes2);
                }
                return super.getChildHandler(str3, str4, attributes2);
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class Statistics {
        private Map<String, Integer> countBySource;
        private int total;

        void clear() {
            this.total = 0;
            this.countBySource = null;
        }

        public int getTotal() {
            return this.total;
        }

        public void setTotal(int i) {
            this.total = i;
        }

        public Set<String> getSources() {
            return this.countBySource == null ? Collections.emptySet() : this.countBySource.keySet();
        }

        public int getCountBySource(String str) {
            Integer num;
            if (this.countBySource != null && (num = this.countBySource.get(str)) != null) {
                return num.intValue();
            }
            return -1;
        }

        public void setCountBySource(String str, int i) {
            if (i == -1) {
                if (this.countBySource != null) {
                    this.countBySource.remove(str);
                }
            } else {
                if (this.countBySource == null) {
                    this.countBySource = new HashMap();
                }
                this.countBySource.put(str, Integer.valueOf(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void generate(XmlWriter xmlWriter, String str) throws IOException {
            if (this.total != 0) {
                xmlWriter.startElement(GoogleBaseNamespaces.GM, str, Collections.singletonList(new XmlWriter.Attribute("total", Integer.toString(this.total))), null);
                if (this.countBySource != null && !this.countBySource.isEmpty()) {
                    xmlWriter.startRepeatingElement();
                    for (Map.Entry<String, Integer> entry : this.countBySource.entrySet()) {
                        ArrayList arrayList = new ArrayList(2);
                        arrayList.add(new XmlWriter.Attribute("name", entry.getKey()));
                        arrayList.add(new XmlWriter.Attribute("count", entry.getValue().toString()));
                        xmlWriter.simpleElement(GoogleBaseNamespaces.GM, "source", arrayList, null);
                    }
                    xmlWriter.endRepeatingElement();
                }
                xmlWriter.endElement();
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class StatsSubElementHandler extends XmlParser.ElementHandler {
        private final Statistics stat;

        public StatsSubElementHandler(Statistics statistics, Attributes attributes) throws ParseException {
            this.stat = statistics;
            AttributeHelper attributeHelper = new AttributeHelper(attributes);
            statistics.setTotal(attributeHelper.consumeInteger("total", false, 0));
            attributeHelper.assertAllConsumed();
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (GoogleBaseNamespaces.GM_URI.equals(str) && "source".equals(str2)) {
                AttributeHelper attributeHelper = new AttributeHelper(attributes);
                this.stat.setCountBySource(attributeHelper.consume("name", true), attributeHelper.consumeInteger("count", true));
                attributeHelper.assertAllConsumed();
            }
            return new XmlParser.ElementHandler();
        }
    }
}
