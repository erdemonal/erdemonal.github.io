<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:foaf="http://xmlns.com/foaf/0.1/" 
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    exclude-result-prefixes="rdf foaf dc">
    
<xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" indent="yes" />

<xsl:template match="/knowledge-graph">
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Erdem Önal - MSc student in CPS2: AI and IoT at Université Jean Monnet &amp; Mines Saint-Étienne." />
    <title>Erdem Önal</title>
    
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="" />


    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://erdemonal.github.io/" />
    <meta property="og:title" content="Erdem Önal - MSc Student in CPS2: AI and IoT" />
    <meta property="og:description" content="MSc Computer Science Student at Université Jean Monnet &amp; Mines Saint-Étienne" />
    <meta property="og:image" content="https://erdemonal.github.io/images/research-interests.webp" />

    <link rel="icon" type="image/png" href="images/icon.webp" />
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <a href="#main" class="skip-link">Skip to main content</a>
    
    <!-- Breadcrumb Navigation (Hidden by default) -->
    <div id="breadcrumb-nav" style="display:none; margin-bottom: 20px; font-family: 'Courier New', monospace;">
        <a href="#" onclick="navigateTo('home'); return false;" style="text-decoration: none;">&#171; Home</a>
    </div>

    <!-- Main Content Wrapper -->
    <div id="main-wrapper">
        <!-- Entity 0001: Person -->
        <header class="header" id="0001">
            <h1>
                <span class="name-badge"><xsl:value-of select="entity[@id='0001']/foaf:name"/></span>
                <a href="#0001" class="semantic-id-link" title="Permalink to Person Entity">#0001</a>
            </h1>
            <div class="intro">
                <xsl:copy-of select="entity[@id='0001']/bio/node()"/>
            </div>
    
            <div class="social-icons" id="0002">
                <span class="semantic-id-label">
                    <a href="#0002" class="semantic-id-link" title="Permalink to Social Connectors">#0002</a>
                </span>
                <div class="social-list">
                    <xsl:for-each select="connectors[@id='0002']/node">
                        <a class="social-text-link">
                            <xsl:attribute name="href">
                                <xsl:value-of select="normalize-space(url)"/>
                            </xsl:attribute>
                            <xsl:attribute name="title"><xsl:value-of select="title"/></xsl:attribute>
                            
                            <xsl:if test="not(starts-with(normalize-space(url), 'mailto:'))">
                                <xsl:attribute name="target">_blank</xsl:attribute>
                                <xsl:attribute name="rel">noopener noreferrer</xsl:attribute>
                            </xsl:if>
                            
                            [ <xsl:value-of select="name"/> ]
                        </a>
                    </xsl:for-each>
                </div>
            </div>
    
            <nav class="main-nav">
                 <a href="#compendium" class="nav-link" id="nav-btn" onclick="navigateTo('compendium'); return false;">Compendium</a>
            </nav>
        </header>
    
        <main id="main" tabindex="-1">
          <div id="home-view">
            <div class="section" id="0003">
                <h2>
                    <xsl:value-of select="concept[@id='0003']/dc:title"/>
                    <a href="#0003" class="semantic-id-link" title="Permalink to Research Concept">#0003</a>
                </h2>
                <figure class="research-interests">
                    <img class="research-interests-image" loading="eager" fetchpriority="high">
                        <xsl:attribute name="src"><xsl:value-of select="normalize-space(concept[@id='0003']/figure/source)"/></xsl:attribute>
                        <xsl:attribute name="alt"><xsl:value-of select="concept[@id='0003']/figure/alt"/></xsl:attribute>
                        <xsl:attribute name="title"><xsl:value-of select="concept[@id='0003']/figure/title"/></xsl:attribute>
                    </img>
                    <figcaption class="research-interests-caption">
                        <xsl:value-of select="concept[@id='0003']/figure/caption"/>
                    </figcaption>
                </figure>
            </div>
    
            <div class="section" id="0004">
                <h2>
                    Research &amp; Projects
                    <a href="#0004" class="semantic-id-link" title="Permalink to Projects Collection">#0004</a>
                </h2>
                <xsl:for-each select="collection[@id='0004']/item">
                    <div class="content-item" id="{@id}">
                        <div class="research-title">
                            <xsl:value-of select="dc:title"/>
                            <a class="semantic-id-link-small">
                                <xsl:attribute name="href">#<xsl:value-of select="@id"/></xsl:attribute>
                                #<xsl:value-of select="@id"/>
                            </a>
                        </div>
                        <div class="project-description"><xsl:value-of select="dc:description"/></div>
                        <div class="project-links">
                            <xsl:for-each select="links/link">
                                <a class="content-link" target="_blank" rel="noopener noreferrer">
                                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(url)"/></xsl:attribute>
                                    <xsl:value-of select="normalize-space(text)"/>
                                </a>
                            </xsl:for-each>
                        </div>
                    </div>
                </xsl:for-each>
            </div>
          </div>
    
          <div id="compendium-view" style="display: none;">
            <div class="section compendium-header" id="0005">
                <h2>
                    Compendium
                    <a href="#0005" class="semantic-id-link" title="Permalink to Compendium Knowledge Base">#0005</a>
                </h2>
            </div>
            <div class="section compendium-section">
                <p class="compendium-description">
                    <xsl:value-of select="collection[@id='0005']/meta/description"/>
                </p>
                
                <div class="filter-buttons" aria-label="Filter notes by category" role="group">
                    <xsl:for-each select="collection[@id='0005']/meta/taxonomy/term">
                        <button class="filter-button">
                            <xsl:if test="@active='true'">
                                <xsl:attribute name="class">filter-button active</xsl:attribute>
                                <xsl:attribute name="aria-pressed">true</xsl:attribute>
                            </xsl:if>
                            <xsl:attribute name="data-filter"><xsl:value-of select="@id"/></xsl:attribute>
                            <xsl:attribute name="onclick">filterNotes(this, '<xsl:value-of select="@id"/>')</xsl:attribute>
                            <xsl:value-of select="@label"/>
                        </button>
                    </xsl:for-each>
                </div>
    
                <xsl:for-each select="collection[@id='0005']/content/entry">
                    <div class="content-item note-item" id="{@id}">
                        <xsl:attribute name="data-categories"><xsl:value-of select="@category"/></xsl:attribute>
                        <div class="note-title">
                            <xsl:value-of select="dc:title"/>
                            <a class="semantic-id-link-small">
                                <xsl:attribute name="href">#<xsl:value-of select="@id"/></xsl:attribute>
                                #<xsl:value-of select="@id"/>
                            </a>
                        </div>
                        <div class="note-content"><xsl:value-of select="body_text"/></div>
                    </div>
                </xsl:for-each>
            </div>
          </div>
        </main>
    
        <footer class="footer">
            
            <div class="last-updated">
              <span class="last-updated-date" id="last-updated-date"></span>
              

            </div>
        </footer>
    </div>

    <!-- App Logic -->
    <script>
      <![CDATA[
      // Disable native scroll restoration to prevent fighting
      if ('scrollRestoration' in history) { history.scrollRestoration = 'manual'; }

      function checkRoute() {
          const hash = window.location.hash.substring(1);
          const breadcrumb = document.getElementById('breadcrumb-nav');
          const header = document.querySelector('.header');
          const footer = document.querySelector('.footer');
          const main = document.getElementById('main');
          const homeView = document.getElementById('home-view');
          const compView = document.getElementById('compendium-view');
          const navBtn = document.getElementById('nav-btn');
          
          // 1. GLOBAL RESET
          header.style.display = 'block';
          footer.style.display = 'block';
          main.style.display = 'block';
          breadcrumb.style.display = 'none';
          homeView.style.display = 'none';
          compView.style.display = 'none';
          
          // Reset Hidden Elements
          const allHidden = document.querySelectorAll('[style*="display: none"]');
          allHidden.forEach(el => {
              if (el !== homeView && el !== compView && el !== breadcrumb && el.id !== 'compendium-view' && el.id !== 'home-view') {
                  el.style.display = '';
              }
          });
          document.querySelectorAll('.section, .content-item, .compendium-header, .compendium-section, .intro, .name-badge, .social-icons, .main-nav, h1').forEach(el => el.style.display = '');

          if (!hash) {
              homeView.style.display = 'block';
              if(navBtn) {
                  navBtn.textContent = 'Compendium';
                  navBtn.href = '#compendium';
                  navBtn.onclick = function() { navigateTo('compendium'); return false; };
              }
              return;
          }

          const target = document.getElementById(hash);
          
          // 2. Main View Logic
          // Check if we need to show Compendium Container
          // If hash is 'compendium', '0005', or any child of compendium-view
          let showCompendium = (hash === 'compendium' || hash === '0005');
          if (target && compView.contains(target)) {
               showCompendium = true;
          }

          if (showCompendium) {
              compView.style.display = 'block';
              homeView.style.display = 'none';
              document.title = 'Compendium';
              
              if(navBtn) {
                  navBtn.textContent = 'Home';
                  navBtn.href = '#';
                  navBtn.onclick = function() { navigateTo('home'); return false; };
              }
          } else {
              homeView.style.display = 'block';
              compView.style.display = 'none';
              document.title = 'Erdem Önal';
              if(navBtn) {
                  navBtn.textContent = 'Compendium';
                  navBtn.href = '#compendium';
                  navBtn.onclick = function() { navigateTo('compendium'); return false; };
              }
          }

          // 3. Isolation Logic
          
          if (hash) {
               // Cases:
               // 1. compendium (Tab) -> Header Visible
               // 2. 0005 (Permalink) -> Header HIDDEN (Isolated), but Compendium Content VISIBLE
               // 3. n-xxx (Deep Link) -> Isolated Item
               // 4. 0004 (Section) -> Isolated Section
               
               if (hash === 'compendium') {
                   // Normal Tab View
                   header.style.display = 'block';
                   footer.style.display = 'block';
                   breadcrumb.style.display = 'none';
               } 
               else if (hash === '0005') {
                   // Special Isolation for Root Compendium
                   // Hide Site Header
                   header.style.display = 'none';
                   footer.style.display = 'none';
                   breadcrumb.style.display = 'block';
                   
                   // Show Compendium View container fully (don't isolate just the title element)
                   compView.style.display = 'block';
                   
                   // Ensure inner structure is visible (Title + Content Section)
                   const compChildren = compView.querySelectorAll(':scope > div');
                   compChildren.forEach(child => child.style.display = 'block');
                   
                   // Hide Home View
                   homeView.style.display = 'none';
                   
                    // Force Scroll to Top (Instant)
                    window.scrollTo(0, 0);
                }
                else {
                   // Default Deep Link Isolation
                   breadcrumb.style.display = 'block';
                   header.style.display = 'none';
                   footer.style.display = 'none';
                   
                   if (target) {
                       if (target.id === '0001') {
                           // Person Exception
                           target.style.display = 'block';
                           document.getElementById('main').style.display = 'none';
                           
                           const socials = document.getElementById('0002');
                           if(socials) socials.style.display = 'none';
                           const nav = target.querySelector('.main-nav');
                           if(nav) nav.style.display = 'none';
                           
                       } else {
                           // Standard Isolation
                           document.getElementById('main').style.display = 'block';
                           
                           // Bubble Visibility
                           let el = target;
                           while (el && el.id !== 'home-view' && el.id !== 'compendium-view' && el !== document.body) {
                               let parent = el.parentElement;
                               if (parent) {
                                   let sibling = parent.firstElementChild;
                                   while (sibling) {
                                       if (sibling !== el && 
                                           sibling.tagName !== 'SCRIPT' && 
                                           sibling.tagName !== 'STYLE' &&
                                           sibling.id !== 'breadcrumb-nav' &&
                                           sibling.id !== 'main-wrapper') {
                                           sibling.style.display = 'none';
                                       }
                                       sibling = sibling.nextElementSibling;
                                   }
                                   parent.style.display = 'block';
                               }
                               el.style.display = 'block';
                               el = parent;
                           }
                       }
                   }
               }
          }
      }

      function navigateTo(route) {
          if (route === 'home') {
              history.pushState(null, null, window.location.pathname);
              window.location.reload(); 
          } else if (route === 'compendium') {
              history.pushState(null, null, '#compendium');
              checkRoute();
          }
      }
      
      function filterNotes(btn, filter) {
          const buttons = document.querySelectorAll('.filter-button');
          buttons.forEach(b => {
              b.classList.remove('active');
              b.setAttribute('aria-pressed', 'false');
          });
          btn.classList.add('active');
          btn.setAttribute('aria-pressed', 'true');

          const notes = document.querySelectorAll('.note-item');
          notes.forEach(note => {
             const cats = note.getAttribute('data-categories').split(',');
             const norm = cats.map(c => c.trim());
             // Fix: Check for 'cat-all' because that matches the XML ID
             if (filter === 'all' || filter === 'cat-all' || norm.includes(filter)) {
                 note.style.display = '';
             } else {
                 note.style.display = 'none';
             }
          });
      }

      window.addEventListener('popstate', checkRoute);
      window.addEventListener('load', checkRoute);
      
      // Last Updated
      try {
        const lastModified = new Date(); 
        document.getElementById("last-updated-date").textContent = lastModified.toLocaleDateString("en-US", { year: "numeric", month: "long", day: "numeric" });
      } catch(e){}
      ]]>
    </script>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
