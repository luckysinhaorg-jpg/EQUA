export default function App() {
  return (
    <main className="shell">
      <header className="topbar">
        <a className="brand" href="/" aria-label="EQUA home">
          <span className="brand-mark">e</span>
          <span>EQUA</span>
        </a>
        <span className="environment"><i /> Sandbox workspace</span>
      </header>

      <section className="welcome">
        <p className="eyebrow">FINANCIAL OPERATIONS</p>
        <h1>Make every transaction<br />make sense.</h1>
        <p className="intro">Your reconciliation workspace is ready. Connect a statement to begin matching activity.</p>
        <div className="actions">
          <button type="button" className="primary" disabled>Import a statement <span>↗</span></button>
          <span className="coming-soon">CSV import arrives in the next phase</span>
        </div>
      </section>

      <section className="status-card" aria-label="Platform status">
        <div className="status-icon">✓</div>
        <div>
          <p className="status-title">Your workspace is set up</p>
          <p className="status-copy">Backend, database and Sandbox integration scaffolding are in place.</p>
        </div>
        <span className="status-pill"><i /> System ready</span>
      </section>

      <footer>RECONCILIATION, WITH CLARITY <span>·</span> EQUA 2026</footer>
    </main>
  )
}
